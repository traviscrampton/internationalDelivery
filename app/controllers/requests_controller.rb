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
    if @request.update(request_params)
      redirect_to user_path(@request.user)
    else
      render :edit
    end
  end

  private
  def request_params
    params.require(:request).permit(:day, :year, :month, :country, :airport, :itemname, :itemdescription, :itemphoto)
  end
end
