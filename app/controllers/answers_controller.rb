class AnswersController < ApplicationController
  before_action :find_request

  def index
    @answers = Answer.all
  end

  def new
    @answer = Answer.new
  end

  def create
    @user = current_user
    @answer = @user.answers.new(answer_params)
    @request.answers.push(@answer) if @request
    if @answer.save
      render :answer_success
    else
      render :new
    end
  end

  def show
    @answer = Answer.find(params[:id])
  end
end


private
def answer_params
  params.require(:answer).permit(:day, :year, :month, :fromcountry, :toairport, :description)
end

def find_request
  @request = params[:request_id] ? Request.find(params[:request_id]) : nil
end
