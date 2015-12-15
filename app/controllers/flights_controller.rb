class FlightsController < ApplicationController
  before_action :find_request

  def index
    @flights = Flight.all
  end

  def new
    @flight = Flight.new
    @flight.build_toflight
    @flight.build_fromflight
  end

  def create
    @user = current_user
    @flight = @user.flights.new(flight_params)
    @flight.assign_attributes(flight_params)
    @request.flights.push(@flight) if @request
    if @flight.save
      if @request
        @deal = Deal.where(flight_id: @flight, request_id: @request)
        @deal.update_all(flightdeal:true)
        redirect_to user_path(@user)
      else
        redirect_to flight_path(@flight)
      end
    else
      render :new
    end
  end

  def show
    if @request
      @flight = Flight.find(params[:id])
      @deal = Deal.find_by({flight_id: @flight.id, request_id: @request.id})
      render :show
    else
      @flight = Flight.find(params[:id])
      render :flightShow
    end
  end

  def destroy
    @flight = Flight.find(params[:id])
    @user = @flight.user
    @flight.destroy
    redirect_to user_path(@user)
  end

  def edit
    @flight = Flight.find(params[:id])
    render :edit
  end

  def update
    @flight = Flight.find(params[:id])
    if params[:toggle] == 'true'
      @request = Request.find(params[:request_id])
      @deal = Deal.find_by({flight_id: @flight.id, request_id: @request.id})
      @deal.update(:flightdeal => true)
        if @deal.flightdeal == true && @deal.requestdeal == true
          @request.update(:done => true)
          @flight.update(:done => true)
          @dealdelete = Deal.where(flight_id: @flight.id).where.not(request_id: @request.id).destroy_all
        end
      redirect_to user_path(current_user)
    elsif params[:toggle] == 'false'
      @deal = Deal.find_by(flight_id: @flight, request_id: @request)
      @deal.update(requestdeal:false)
      redirect_to user_path(current_user)
    else
      if @flight.update(flight_params)
        respond_to do |format|
          format.html {redirect_to flight_path(@flight)}
          format.js
        end
      else
        render :edit
      end
    end
  end


  private
  def flight_params
    params.require(:flight).permit(:day, :year, :month, :description, :done, toflight_attributes: [:airport], fromflight_attributes: [:airport], deal_attributes: [:flightdeal])
  end

  def find_request
    @request = params[:request_id] ? Request.find(params[:request_id]) : nil
  end
end
