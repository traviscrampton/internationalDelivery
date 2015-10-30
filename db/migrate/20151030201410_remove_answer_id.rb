class RemoveAnswerId < ActiveRecord::Migration
  def change
    remove_column :items, :answer_id
    add_column :answers, :request_id, :integer
  end
end
