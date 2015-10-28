class Connection < ActiveRecord::Base
  belongs_to :request
  belongs_to :answer
end
