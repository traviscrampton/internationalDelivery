class JoinTable < ActiveRecord::Migration
  def change
    create_table :answers_requests do |t|
      t.integer :request_id
      t.integer :answer_id
    end
    remove_column :answers, :request_id, :integer
  end
end
