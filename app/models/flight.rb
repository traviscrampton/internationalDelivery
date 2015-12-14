class Flight < ActiveRecord::Base

  validates :description, :presence => true
  validates :day, :presence => true
  validates :month, :presence => true
  validates :year, :presence => true

  belongs_to :user
  has_many :deals, dependent: :destroy
  has_one :toflight, dependent: :destroy
  has_one :fromflight, dependent: :destroy
  has_many :requests, :through => :deals
  accepts_nested_attributes_for :toflight
  accepts_nested_attributes_for :fromflight
  accepts_nested_attributes_for :deals


  def fulldate
    return self.month + " " + self.day + "," + " " + self.year
  end

end
