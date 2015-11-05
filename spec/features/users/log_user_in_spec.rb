require 'rails_helper'

describe "Users" do
  before do
    user = FactoryGirl.create(:user)
  end

  it "user can log into their account" do
    visit new_user_session_path
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "dapassword"
    click_button "Log in"
    expect(page).to have_content "GIT IT"
  end
end
