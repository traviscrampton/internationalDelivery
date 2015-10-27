class RequestsController < ApplicationController

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @user = current_user
    @request = @user.requests.new(request_params)
    if @request.save
      redirect_to request_path(@request)
    else
      render :new
    end
  end

  def show
    @request = Request.find(params[:id])
  end

  private
  def request_params
    params.require(:request).permit(:day, :year, :month, :country, :airport, :itemname, :itemdescription, :itemphoto)
  end
end
