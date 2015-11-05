require 'rails_helper'

describe Request do
  it {should validate_presence_of :daystart}
  it {should validate_presence_of :monthstart}
  it {should validate_presence_of :yearstart}
  it {should validate_presence_of :dayend}
  it {should validate_presence_of :monthend}
  it {should validate_presence_of :yearend}
  it {should validate_presence_of :fromcountry}
  it {should validate_presence_of :airport}
  it {should validate_presence_of :deal}
  it {should belong_to :user}
end
