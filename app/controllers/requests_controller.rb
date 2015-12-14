class RequestsController < ApplicationController
  before_action :find_flight

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
    @request.build_torequest
    @request.build_fromrequest
    @request.build_item
  end

  def create
    @user = current_user
    @request = @user.requests.new(request_params)
    @request.assign_attributes(request_params)
      @flight.requests.push(@request) if @flight
      if @request.save
        @deal = Deal.where(flight_id: @flight, request_id: @request)
        @deal.update_all(requestdeal:true)
        redirect_to request_path(@request)
      else
        render :new
      end
    end

  def show
    if @flight
      @request = Request.find(params[:id])
      @deal = Deal.find_by({flight_id: @flight.id, request_id: @request.id})
      @item = @request.item
        # if @deal.flightdeal == false && @deal.requestdeal == false
        #   redirect_to user_path(current_user)
        # else
        # render :requestShow
        # end
    else
      @request = Request.find(params[:id])
      @item = @request.item
      render :show
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @user = @request.user
    @request.destroy
    redirect_to user_path(@user)
  end

  def edit
    @request = Request.find(params[:id])
    render :edit
  end

  def update
    @request = Request.find(params[:id])
    if params[:toggle] == 'true'
      @flight = Flight.find(params[:flight_id])
      @deal = Deal.where(flight_id: @flight, request_id: @request)
      @deal.update_all(requestdeal:true)
      redirect_to user_path(current_user)
    elsif params[:toggle] == 'false'
      binding.pry
      @flight = Flight.find(params[:flight_id])
      @deal = Deal.where(flight_id: @flight, request_id: @request)
      @deal.update_all(flightdeal:false)
      redirect_to user_path(current_user)
      if @request.update(request_params)
        respond_to do |format|
          format.html {redirect_to request_path(@request)}
          format.js
        end
      else
        render :edit
      end
    end
  end


  private
  def request_params
    params.require(:request).permit(:daystart, :yearstart, :monthstart, :dayend, :monthend, :yearend, torequest_attributes: [:airport], fromrequest_attributes: [:airport], item_attributes: [:itemname, :itemdescription, :itemimage], deal_attributes: [:requestdeal])
  end

  def find_flight
    @flight = params[:flight_id] ? Flight.find(params[:flight_id]) : nil
  end
end
