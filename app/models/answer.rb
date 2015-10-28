class Answer < ActiveRecord::Base

  belongs_to :user
  has_many :requests, through: :connections
  has_many :connections
end
