class RemoveColumnsConnections < ActiveRecord::Migration
  def change
    remove_column :connections, :request_deal
    remove_column :connections, :answer_deal
  end
end
