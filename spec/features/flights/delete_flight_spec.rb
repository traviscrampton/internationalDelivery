require 'rails_helper'

describe "flight" do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @flight = FactoryGirl.create(:flight, :user => user)
  end

  it "deletes a flight" do
    visit flight_path(@flight)
    expect(page).to have_content "Travis Crampton's Itinerary"
    click_on "Delete"
    expect(page).to have_content "Edit Profile"
  end
end
