class AnswersController < ApplicationController
  def new
    @request = Request.find(params[:request_id])
    @answer = Answer.new
  end

  def create
    @request = Request.find(params[:request_id])
    @user = current_user
    @answer = @user.answers.new(answer_params)
    @item = @request.item
    @item.update(answer: @answer)
    if @answer.save
      render :answer_success
    else
      render :new
    end
  end
end


private
def answer_params
  params.require(:answer).permit(:day, :year, :month, :fromcountry, :toairport, :description)
end
