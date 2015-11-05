require 'rails_helper'

RSpec.describe User, type: :model do
  it {should have_many :requests}
  it {should have_many :answers}
end
