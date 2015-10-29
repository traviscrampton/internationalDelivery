class Answer < ActiveRecord::Base

  validates :fromcountry, :presence => true
  validates :toairport, :presence => true
  validates :description, :presence => true
  validates :day, :presence => true
  validates :month, :presence => true
  validates :year, :presence => true

  belongs_to :user
  has_many :requests, through: :items
  has_one :item
end
