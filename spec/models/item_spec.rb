require 'rails_helper'

describe Item do

  describe "Validations" do
    it {should validate_presence_of :itemname}
    it {should validate_presence_of :itemdescription}
  end
  describe "Relationship" do
    it {should belong_to :request}
  end  

end
