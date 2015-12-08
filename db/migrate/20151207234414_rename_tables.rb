class RenameTables < ActiveRecord::Migration
  def change
    rename_table :to_flights, :toflights
    rename_table :from_flights, :fromflights
    rename_table :to_requests, :torequests
    rename_table :from_requests, :fromrequests
  end
end
