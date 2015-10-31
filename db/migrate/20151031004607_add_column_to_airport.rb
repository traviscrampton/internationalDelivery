class AddColumnToAirport < ActiveRecord::Migration
  def change
    add_column :australian_airports, :abbrev, :string
  end
end
