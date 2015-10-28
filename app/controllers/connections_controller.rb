class ConnectionsController < ApplicationController

  def new
    @request = Request.find(params[:request_id])
    @connection = Connection.new
    @answer = Answer.new
  end

  def create
    binding.pry
    @user = current_user
    @answer = Answer.new(day: params[:day], month: params[:month], year: params[:year], country: params[:country], airport: params[:airport], description: params[:description], user_id: params[current_user.id])
    @request_user = User.find(params[:id])
    @connection = Connection.new(request_id: params[@request_user.id], answer_id: params[@user.id])
    @answer.connections.push(connection_params)
    if @answer.save
      render :answer_success
    else
      render :new
    end
  end

end
