require 'rails_helper'

describe "request" do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @request = FactoryGirl.create(:request, :user => user)
  end

  it "edits a request" do
    visit request_path(@request)
    click_on "Edit Request"
    fill_in "Which Airport Do You Want The Item Flown From?", :with => "Melbourne International Airport"
    click_on "Post Request"
    expect(page).to have_content "Melbourne International Airport"
  end
end
