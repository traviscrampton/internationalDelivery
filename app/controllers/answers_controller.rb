class AnswersController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @answer = Answer.new
  end

  def create
    @request = Request.find(params[:request_id])
    @user = current_user
    @answer = @user.answers.new(answer_params)
    @request.answers.push(@answer)
    binding.pry
    if @answer.save
      render :answer_success
    else
      render :new
    end
  end

  def show
    @request = Request.find(params[:request_id])
    @answer = Answer.find(params[:id])
  end
end


private
def answer_params
  params.require(:answer).permit(:day, :year, :month, :fromcountry, :toairport, :description)
end
