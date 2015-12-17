require "rails_helper"

  describe Fromrequest do

    describe "Validations" do
      it {should validate_presence_of :airport}
    end

    describe "Relationships" do
      it {should belong_to :request}
    end

  end
