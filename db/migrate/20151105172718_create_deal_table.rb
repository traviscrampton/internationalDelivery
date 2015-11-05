class CreateDealTable < ActiveRecord::Migration
  def change
    add_column :answers, :deal, :boolean, default: false
    add_column :requests, :deal, :boolean, default: false
  end
end
