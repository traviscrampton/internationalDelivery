class RenameTable < ActiveRecord::Migration
  def change
    rename_table :australian_airports, :australians
  end
end
