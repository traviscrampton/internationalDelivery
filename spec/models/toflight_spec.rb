require "rails_helper"

  describe Toflight do

    describe "Validations" do
      it {should validate_presence_of :airport}
    end

    describe "Relationships" do
      it {should belong_to :flight}
    end

  end
