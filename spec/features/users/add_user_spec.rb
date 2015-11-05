require 'rails_helper'

describe "the add a user process" do
  it "adds a new user" do
    visit new_user_registration_path
    fill_in 'First Name', :with => "Travis"
    fill_in 'Last Name', :with => "Crampton"
    fill_in 'Phone Number', :with => "(281)330-8004"
    fill_in 'Street Address', :with => "4424 SE Stark"
    fill_in 'Country', :with => "USA"
    fill_in 'State Or Territory', :with => "Oregon"
    fill_in 'Zipcode', :with => "93433"
    fill_in 'Email', :with => "crampton.travis@gmail.com"
    fill_in 'Password', :with => "travis12"
    fill_in 'Password confirmation', :with => "travis12"
    find('input[type="submit"]').click
    expect(page).to have_content ('GIT IT')
  end
end
