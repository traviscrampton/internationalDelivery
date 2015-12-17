require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Validations" do
    it {should validate_presence_of :firstname}
    it {should validate_presence_of :lastname}
    it {should validate_presence_of :phonenumber}
    it {should validate_presence_of :streetaddress}
    it {should validate_presence_of :country}
    it {should validate_presence_of :territory}
    it {should validate_presence_of :zipcode}
  end

  describe "Relationships" do
    it {should have_many :requests}
    it {should have_many :flights}
  end
end
