class ItemsController < ApplicationController

  def new
      @request = Request.find(params[:request_id])
      @item = Item.new
  end


end
