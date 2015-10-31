class ChangeColumns < ActiveRecord::Migration
  def change
    add_column :australians, :city, :string
    add_column :americans, :city, :string
  end
end
