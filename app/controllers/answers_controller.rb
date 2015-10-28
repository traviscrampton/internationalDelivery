class AnswersController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @answer = Answer.new
  end

  def create
    @request = Request.find(params[:request_id])
    @user = current_user
    @answer = @user.answers.new(answer_params)
    @request_user = User.find(params[:request_id])
    if @answer.save
      @answer.requests.push(@request)
      render :answer_success
    else
      render :new
    end
  end
end


private
def answer_params
  params.require(:answer).permit(:day, :year, :month, :country, :airport, :description, )
end
