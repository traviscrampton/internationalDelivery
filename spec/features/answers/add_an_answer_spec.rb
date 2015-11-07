require 'rails_helper'

describe "Users" do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

  describe 'add a answer' do
    it 'adds a new answer' do
      visit new_answer_path
      select('21', from: "Day")
      select('December', from: "Month")
      select('2016', from: "Year")
      fill_in "What Country Are You Coming From?", :with => "United States"
      fill_in "What Airport are you flying into", :with => "Melbourne International Airport"
      fill_in "Description", :with => "I'm coming on a flight, can't bring anything larger than a bike let me know"
      click_button "Submit Answer"
      expect(page).to have_content("Itinerary")
    end
  end
end
