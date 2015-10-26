require 'rails_helper'

describe Request do
  it {should validate_presence_of :date}
  it {should validate_presence_of :country}
  it {should validate_presence_of :airport}
  it {should validate_presence_of :itemname}
  it {should validate_presence_of :itemdescription}
  it {should belong_to :user}
end
