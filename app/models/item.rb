class Item < ActiveRecord::Base
  validates :itemname, :presence => true
  validates :itemdescription, :presence => true

  belongs_to :request
  belongs_to :answer
end
