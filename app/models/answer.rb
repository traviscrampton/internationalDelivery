class Answer < ActiveRecord::Base

  validates :fromcountry, :presence => true
  validates :toairport, :presence => true
  validates :description, :presence => true
  validates :day, :presence => true
  validates :month, :presence => true
  validates :year, :presence => true

  belongs_to :user
  has_and_belongs_to_many :request

  def fulldate
    return self.month + " " + self.day + "," + " " + self.year
  end
end
