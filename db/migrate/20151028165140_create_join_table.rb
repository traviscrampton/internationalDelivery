class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :request_id
      t.integer :answer_id
      t.boolean :initial_email
      t.boolean :request_deal, default: false
      t.boolean :answer_deal, default: false
      t.boolean :deal, default: false
    end
  end
end
