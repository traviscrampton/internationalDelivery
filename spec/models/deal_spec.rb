require 'rails_helper'

describe Deal do
  describe "Relationships" do
    it {should belong_to :request}
    it {should belong_to :flight}
  end
end
