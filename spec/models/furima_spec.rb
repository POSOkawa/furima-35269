require 'rails_helper'
describe Furima do
  describe '#create' do
    it "足りないよ" do
      user = FactoryBot.create(:user)
      furima = FactoryBot.build(:furima)
      expect(furima).to be_valid
    end
  end
end