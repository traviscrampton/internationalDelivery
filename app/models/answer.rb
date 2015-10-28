class Answer < ActiveRecord::Base
  validates :date, :presence => true
  validates :country, :presence => true
  validates :airport, :presence => true
  belongs_to :user
  has_many :requests, through: :connections 
end
