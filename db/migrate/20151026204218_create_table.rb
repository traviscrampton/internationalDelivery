class CreateTable < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.string :date
      t.string :country
      t.string :airport
      t.string :itemname
      t.string :itemdescription
      t.string :itemphoto_file_name
      t.string :itemphoto_content_type
      t.integer :itemphoto_file_size
      t.datetime :itemphoto_updated_at
    end
    create_table :answers do |t|
      t.integer :user_id
      t.string :country
      t.string :date
      t.string :airport
    end
  end
end
