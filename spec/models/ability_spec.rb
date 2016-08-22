require 'rails_helper'

describe Ability do
  context "when user is not admin" do
    before do
      @user = FactoryGirl.create(:user)
    end

    it "user cannot manage product is true" do
      expect(@user.admin).to eq false
    end
  end
end