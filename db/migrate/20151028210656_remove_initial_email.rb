class RemoveInitialEmail < ActiveRecord::Migration
  def change
    remove_column :connections, :initial_email
  end
end
