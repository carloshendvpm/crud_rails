require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    it "it is valid with user and email" do
      usuario = User.new(
        name: "João",
        email: "joao@example.com"
      )
      expect(usuario).to be_valid
    end
  
    it "it is invalid without name" do
      usuario = User.new(
        name: nil,
        email: "joao@example.com"
      )
      expect(usuario).to_not be_valid
    end
  
    it "it is invalid without email" do
      usuario = User.new(
        name: "João",
        email: nil
      )
      expect(usuario).to_not be_valid
    end
  end
end