require 'rails_helper'

describe Answer do
  it{should validate_presence_of :fromcountry}
  it{should validate_presence_of :toairport}
  it{should validate_presence_of :description}
  it{should validate_presence_of :day}
  it{should validate_presence_of :month}
  it{should validate_presence_of :year}
  it{should validate_presence_of :deal}

  it {should belong_to :user}
  it {should have_and_belong_to_many :requests}
end
