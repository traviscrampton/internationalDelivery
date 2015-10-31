class CreateAmerican < ActiveRecord::Migration
  def change
    create_table :americans do |t|
      t.column :name, :string
      t.column :abbrev, :string
    end
  end
end
