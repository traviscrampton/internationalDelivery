class Rename < ActiveRecord::Migration
  def change
    rename_table :flights_requests, :deals
    remove_column :flights, :deal
    remove_column :requests, :deal
    add_column :deals, :flightdeal, :boolean, :default => false
    add_column :deals, :requestdeal, :boolean, :default => false
  end
end
