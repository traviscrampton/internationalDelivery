class AddMoreColumns < ActiveRecord::Migration
  def change
    add_column :answers, :day, :string
    add_column :answers, :month, :string
    add_column :answers, :year, :string
    remove_column :answers, :date
  end
end
