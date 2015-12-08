class Request < ActiveRecord::Base
  validates :daystart, :presence => true
  validates :monthstart, :presence => true
  validates :yearstart, :presence => true
  validates :dayend, :presence => true
  validates :monthend, :presence => true
  validates :yearend, :presence => true



  has_one :item
  has_one :torequest
  has_one :fromrequest
  accepts_nested_attributes_for :torequest
  accepts_nested_attributes_for :fromrequest
  accepts_nested_attributes_for :item
  belongs_to :user
  has_and_belongs_to_many :flights

  def startdate
    return monthstart + " " + daystart + "," + " " + yearstart
  end
  def enddate
    return monthend + " " + dayend + "," + " " + yearend
  end

  def requestToggle
    @request = Request.find(params[:id])
    @request.update_attributes(deal: true)
  end

end
