require 'rails_helper'

describe "Adds a flight process" do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  it "adds a new flight" do
    visit new_flight_path
    select('21', from: "Day")
    select('December', from: "Month")
    select('2016', from: "Year")
    fill_in "Which Airport Are You Flying From?", :with => "Melbourne International Airport"
    fill_in "Which Airport Are You Flying Into?", :with => "San Francisco International Airport"
    fill_in "Description", :with => "Everybody know I'm Living It Up!"
    click_on "Submit Answer"
    expect(page).to have_content "Travis Crampton's Itinerary"
  end
end
