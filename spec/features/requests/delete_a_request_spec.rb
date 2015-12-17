require 'rails_helper'

describe "request" do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    @request = FactoryGirl.create(:request, :user => user)
  end

  it "deletes a request" do
    visit request_path(@request)
    click_on "Delete"
    expect(page).to have_content "Edit Profile"
  end
end
