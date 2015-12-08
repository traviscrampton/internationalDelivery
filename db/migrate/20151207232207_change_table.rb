class ChangeTable < ActiveRecord::Migration
  def change
    drop_table :answers_requests
    create_table :flights_requests do |t|
      t.column :flight_id, :integer
      t.column :request_id, :integer
    end
  end
end
