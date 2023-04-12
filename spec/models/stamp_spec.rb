require 'rails_helper'

RSpec.describe Stamp, type: :model do
  context "validations" do
    it "is valid with valid attributes" do
      user = User.create(name: "Test User", email: "test@example.com")
      stamp = Stamp.new(description: "Test Stamp", value: 10, user: user)
      expect(stamp).to be_valid
    end

    it "is not valid without a description" do
      user = User.create(name: "Test User", email: "test@example.com")
      stamp = Stamp.new(value: 10, user: user)
      expect(stamp).to_not be_valid
    end

    it "is not valid without a value" do
      user = User.create(name: "Test User", email: "test@example.com")
      stamp = Stamp.new(description: "Test Stamp", user: user)
      expect(stamp).to_not be_valid
    end

    it "is not valid without a user" do
      stamp = Stamp.new(description: "Test Stamp", value: 10)
      expect(stamp).to_not be_valid
    end
  end
end