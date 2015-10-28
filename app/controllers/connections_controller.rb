class ConnectionsController < ApplicationController

  def new
    @request = Request.find(params[:request_id])
    @connection = Connection.new
  end

  def create
    @user = current_user
    @request_user = User.find(params[:id])
    @connection = Connection.new(connection_params)
    render :show
  end

private
  def connection_params
    params.require(:connection).permit(:request_id, :answer_id, :request_deal, :answer_deal, :deal)
  end
end
