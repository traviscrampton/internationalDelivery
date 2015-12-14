class Deal < ActiveRecord::Base

  belongs_to :request
  belongs_to :flight
end
