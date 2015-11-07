require 'rails_helper'

describe "Users" do
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
      fill_in "Which Country Are You Coming From", :with => "United States"
      fill_in "Which Airport are you flying to", :with => "Melbourne International Airport"
      click_button "Post Request"
      fill_in "Name Of Item", :with => "Bicycle"
      fill_in "Description Of Item", :with => "This is a really good bike that I need"
      click_on "Post Item"
      expect(page).to have_content "GIT IT"
    end
  end
end
