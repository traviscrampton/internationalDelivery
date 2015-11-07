# require 'rails_helper'
#
# describe "Users & Request" do
#   before do
#     user = FactoryGirl.create(:user)
#     @request = FactoryGirl.create(:request)
#     login_as(user, :scope => :user)
#   end
#
#   describe "add a item to a request" do
#     it "adds the item" do
#       visit new_request_item_path(@request)
#       fill_in "Name Of Item", :with => "Bicycle"
#       fill_in "Description Of Item", :with => "This is a really good bike that I need"
#       find('input[type="submit"]').click
#       click_button "Post Item"
#       expect(page).to have_content "GIT IT"
#     end
#   end
# end
