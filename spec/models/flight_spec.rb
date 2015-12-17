require 'rails_helper'

describe Flight do

  describe "Validations" do
    it{should validate_presence_of :description}
    it{should validate_presence_of :day}
    it{should validate_presence_of :month}
    it{should validate_presence_of :year}
  end

  describe 'Relationships' do
    it {should belong_to :user}
    it {should have_one :toflight}
    it {should have_one :fromflight}
    it {should have_many :deals}
    it {should have_many(:requests).through(:deals) }
  end

  describe "Nested" do
    it {should accept_nested_attributes_for :toflight}
    it {should accept_nested_attributes_for :fromflight}
    it {should accept_nested_attributes_for :deals}
  end

end
