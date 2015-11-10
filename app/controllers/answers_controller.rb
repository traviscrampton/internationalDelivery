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
      redirect_to answer_path(@answer)
    else
      render :new
    end
  end

  def show
    if @request
      @answer = Answer.find(params[:id])
    else
      @answer = Answer.find(params[:id])
      render :answerShow
    end
  end

  def update
      @answer = Answer.find(params[:id])
      if @answer.update(answer_params)
      respond_to do |format|
        format.html {redirect_to answer_path(@answer)}
        format.js
      end
    else
      render :edit
    end
  end


private
  def answer_params
    params.require(:answer).permit(:day, :year, :month, :fromcountry, :toairport, :description)
  end

  def find_request
    @request = params[:request_id] ? Request.find(params[:request_id]) : nil
  end
end
