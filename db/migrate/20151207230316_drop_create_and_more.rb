class DropCreateAndMore < ActiveRecord::Migration
  def change
    remove_column :requests, :fromcountry
    remove_column :requests, :airport
    remove_column :answers, :fromcountry
    remove_column :answers, :toairport
    remove_column :items, :answer_deal
    remove_column :items, :request_deal
    rename_table :answers, :flights

    create_table :to_requests do |t|
      t.column :airport, :string
      t.column :request_id, :integer
      t.column :longitude, :float
      t.column :latitude, :float
    end
    create_table :from_requests do |t|
      t.column :airport, :string
      t.column :request_id, :integer
      t.column :longitude, :float
      t.column :latitude, :float
    end
    create_table :from_flights do |t|
      t.column :airport, :string
      t.column :flight_id, :integer
      t.column :longitude, :float
      t.column :latitude, :float
    end
    create_table :to_flights do |t|
      t.column :airport, :string
      t.column :flight_id, :integer
      t.column :longitude, :float
      t.column :latitude, :float
    end
  end
end
