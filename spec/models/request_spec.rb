require 'rails_helper'

describe Request do
  describe "Validations" do
    it {should validate_presence_of :daystart}
    it {should validate_presence_of :monthstart}
    it {should validate_presence_of :yearstart}
    it {should validate_presence_of :dayend}
    it {should validate_presence_of :monthend}
    it {should validate_presence_of :yearend}
  end

  describe 'Relationships' do
    it {should belong_to :user}
    it {should have_one :torequest}
    it {should have_one :fromrequest}
    it {should have_one :item}
    it {should have_many :deals}
    it {should have_many(:flights).through(:deals) }
  end

  describe "Nested" do
    it {should accept_nested_attributes_for :torequest}
    it {should accept_nested_attributes_for :fromrequest}
    it {should accept_nested_attributes_for :item}
  end





  it {should belong_to :user}
end
