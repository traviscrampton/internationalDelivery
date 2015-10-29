class CreateTables < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :fromcountry
      t.string :airport
      t.string :daystart
      t.string :monthstart
      t.string :yearstart
      t.string :dayend
      t.string :monthend
      t.string :yearend
    end
    create_table :answers do |t|
      t.integer :user_id
      t.string  :fromcountry
      t.string :toairport
      t.string :description
      t.string :day
      t.string :month
      t.string :year
    end
    create_table :items do |t|
      t.string :itemname
      t.text :itemdescription
    end
  end
end
