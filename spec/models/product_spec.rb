require 'rails_helper'

describe Product do 
  context "when the product has comments" do
    
    before do
      @product = Product.create!(name: "strider bike")
      @user = User.create!(first_name: "Sue", last_name: "Smith", email: "test@test.com", password: "test55")
      @product.comments.create!(rating: 1, user: @user, body: "This bike was very poorly made.")
      @product.comments.create!(rating: 5, user: @user, body: "My son loved his new Strider and it's great for learning balance!")
      @product.comments.create!(rating: 3, user: @user, body: "Strider bikes always makes a good product, but this time (on the kid's bike) they used cheaper materials.")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating). to eq (3)
    end

    it "is not valid" do
      expect(Product.new(name: "", description: "Nice bike")).not_to be_valid
    end
  end
  end

