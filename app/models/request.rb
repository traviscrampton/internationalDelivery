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
  has_one :item
  has_many :answers

  def startdate
    return monthstart + " " + daystart + "," + " " + yearstart
  end
  def enddate
    return monthend + " " + dayend + "," + " " + yearend
  end

end
