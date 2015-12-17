require 'rails_helper'

describe "request" do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  describe "the add a request process" do
    it "adds a new request" do
      visit new_request_path
      select('21', from: "Start Day")
      select('December', from: "Start Month")
      select('2016', from: "Start Year")
      select('21', from: "End Day")
      select('Feburary', from: "End Month")
      select('2017', from: "End Year")
      fill_in "Which Airport Do You Want The Item Flown From?", :with => "Melbourne International Airport"
      fill_in "Which Airport Do You Want The Item Flown To?", :with => "San Francisco International Airport"
      fill_in "What Is The Item", :with => "Bicycle"
      fill_in "Item Description", :with => "This is a really good bike that I need"
      click_on "Post Request"
      expect(page).to have_content "GIT IT"
    end
  end
end
