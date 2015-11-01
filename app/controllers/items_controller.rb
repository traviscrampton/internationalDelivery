class ItemsController < ApplicationController

  def new
      @request = Request.find(params[:request_id])
      @item = Item.new
  end

  def create
    @request = Request.find(params[:request_id])
    @item = @request.build_item(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:itemname, :itemdescription, :itemimage)
  end


end
