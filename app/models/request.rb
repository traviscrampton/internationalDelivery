class Request < ActiveRecord::Base
  validates :daystart, :presence => true
  validates :monthstart, :presence => true
  validates :yearstart, :presence => true
  validates :dayend, :presence => true
  validates :monthend, :presence => true
  validates :yearend, :presence => true



  has_one :item, dependent: :destroy
  has_one :torequest, dependent: :destroy
  has_one :fromrequest, dependent: :destroy
  has_many :deals, dependent: :destroy
  accepts_nested_attributes_for :torequest
  accepts_nested_attributes_for :fromrequest
  accepts_nested_attributes_for :item
  belongs_to :user
  has_many :flights, :through => :deals

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
