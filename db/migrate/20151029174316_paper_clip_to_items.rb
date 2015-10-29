class PaperClipToItems < ActiveRecord::Migration
  def up
    add_attachment :items, :itemimage
  end
  def down
     remove_attachment :items, :itemimage
  end
end
