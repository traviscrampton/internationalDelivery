class AddColumns < ActiveRecord::Migration
  def change
    add_column :requests, :day, :string
    add_column :requests, :month, :string
    add_column :requests, :year, :string
    remove_column :requests, :date
  end
end
