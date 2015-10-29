class AddColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :answer_id, :integer
    add_column :items, :request_id, :integer
    add_column :items, :answer_deal, :boolean,  default: false
    add_column :items, :request_deal, :boolean, default: false
  end
end
