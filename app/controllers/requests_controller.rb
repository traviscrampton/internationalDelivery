class RequestsController < ApplicationController
  before_action :find_answer

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @user = current_user
    @request = @user.requests.new(request_params)
      @answer.requests.push(@request) if @answer
    if @request.save
      redirect_to new_request_item_path(@request)
    else
      render :new
    end
  end

  def show
    if @answer
      @request = Request.find(params[:id])
      @item = @request.item
      render :requestShow
    else
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
    @australians = Australian.all
    @americans = American.all
    @request = Request.find(params[:id])
    render :edit
  end

  def update
    @request = Request.find(params[:id])
    if params[:toggle] == 'true'
      @request.update(deal:true)
      redirect_to user_path(current_user)
    else
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
    params.require(:request).permit(:daystart, :yearstart, :monthstart, :dayend, :monthend, :yearend, :fromcountry, :airport)
  end

  def find_answer
    @answer = params[:answer_id] ? Answer.find(params[:answer_id]) : nil
  end
end
