class Fromflight < ActiveRecord::Base

  validates :airport, :presence => true
  after_validation :geocode
  geocoded_by :airport

  belongs_to :flight

end
