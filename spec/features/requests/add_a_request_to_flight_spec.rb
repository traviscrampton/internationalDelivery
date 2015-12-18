require 'rails_helper'

describe "request" do
  before do
    user = FactoryGirl.create(:user)
    user2 = FactoryGirl.create(:user, firstname: "Craig", email: "bootyeater69@gmail.com")
    login_as(user, :scope => :user)
    @flight = FactoryGirl.create(:flight, :user)
  end

  it "adds a request to a flight" do
    visit flight_path(@flight)
    expect(page). to have_content "to bring an Item"
  end
end
