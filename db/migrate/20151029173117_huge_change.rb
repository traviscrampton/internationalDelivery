class HugeChange < ActiveRecord::Migration
  def change
    drop_table :requests
    drop_table :answers
  end
end
