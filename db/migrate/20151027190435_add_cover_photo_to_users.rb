class AddCoverPhotoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :coverphoto
    end
  end

  def self.down
    drop_attached_file :users, :coverphoto
  end
end
