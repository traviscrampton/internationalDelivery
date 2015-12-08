class Flight < ActiveRecord::Base

  validates :description, :presence => true
  validates :day, :presence => true
  validates :month, :presence => true
  validates :year, :presence => true

  belongs_to :user
  has_one :toflight
  has_one :fromflight
  has_and_belongs_to_many :requests
  accepts_nested_attributes_for :toflight
  accepts_nested_attributes_for :fromflight

  def fulldate
    return self.month + " " + self.day + "," + " " + self.year
  end



end
