class AddEvenMoreColumns < ActiveRecord::Migration
  def change
    add_column :requests, :done, :boolean, :default => false
    add_column :flights, :done, :boolean, :default => false
  end
end
