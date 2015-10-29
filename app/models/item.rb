class Item < ActiveRecord::Base
  validates :itemname, :presence => true
  validates :itemdescription, :presence => true

  has_attached_file :itemimage, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :itemimage, :content_type => /\Aimage\/.*\Z/

  belongs_to :request
  belongs_to :answer
end
