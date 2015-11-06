require 'rails_helper'

describe "the add a request process" do
  it "adds a new request" do
    visit new_request_path
    select('4', :from => "Day")
    fill_in 'Month', :with => "Feburary"
    fill_in 'Year', :with => "2015"
    fill_in 'Country', :with => "Australia"
    fill_in 'Airport', :with => "Melbourne International Airport"
    fill_in 'Itemname', :with => "2010 Surly Cross-Road Trucker"
    find('input[type=submit]').click
    expect(page.to have_content('2010 Surly Cross-Road Trucker'))

  end
end
