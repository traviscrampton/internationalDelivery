require 'rails_helper'

RSpec.describe Item, type: :model do
  it {should validate_presence_of :itemname}
  it {should validate_presence_of :itemdescription}
  it {should belong_to :request}
end
