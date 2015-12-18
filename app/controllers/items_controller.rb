# class ItemsController < ApplicationController
#
#   def new
#       @request = Request.find(params[:request_id])
#       @item = Item.new
#   end
#
#   def create
#     @request = Request.find(params[:request_id])
#     @item = @request.build_item(item_params)
#     if @item.save
#       redirect_to root_path
#     else
#       render :new
#     end
#   end
#
#   def show
#     @request = Request.find(params[:request_id])
#     @item = @request.item
#   end
#
#   def edit
#     @request = Request.find(params[:request_id])
#     @item = Item.find(params[:id])
#   end
#
#   def update
#     @request = Request.find(params[:request_id])
#     @item = @request.item
#     if @item.update(item_params)
#       respond_to do |format|
#         format.html {redirect_to request_path(@request)}
#         format.js
#       end
#     else
#       render :root
#     end
#   end
#
#   private
#   def item_params
#     params.require(:item).permit(:itemname, :itemdescription, :itemimage)
#   end
#
#
# end
