class CreateAustralianAirportTable < ActiveRecord::Migration
  def change
    create_table :australian_airports do |t|
      t.column :name, :string 
    end
  end
end
