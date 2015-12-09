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
      render :show
    else
      @flight = Flight.find(params[:id])
      render :flightShow
    end
  end

  def update
    @flight = Flight.find(params[:id])
    if params[:toggle] == 'true'
      @flight.update(deal:true)
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
    params.require(:flight).permit(:day, :year, :month, :description, :deal, toflight_attributes: [:airport], fromflight_attributes: [:airport])
  end

  def find_request
    @request = params[:request_id] ? Request.find(params[:request_id]) : nil
  end
end
