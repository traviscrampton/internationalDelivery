class Fromrequest < ActiveRecord::Base

  validates :airport, :presence => true

  geocoded_by :airport
  after_validation :geocode
  belongs_to :request

end
