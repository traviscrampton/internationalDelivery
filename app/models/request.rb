class Request < ActiveRecord::Base
  validates :daystart, :presence => true
  validates :monthstart, :presence => true
  validates :yearstart, :presence => true
  validates :dayend, :presence => true
  validates :monthend, :presence => true
  validates :yearend, :presence => true
  validates :fromcountry, :presence => true
  validates :airport, :presence => true


  belongs_to :user
  has_many :items
  has_many :answers, through: :items
  has_many :items
end
