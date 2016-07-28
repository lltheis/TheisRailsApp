require 'rails_helper'

 describe User do

    it "is not valid" do
      expect(User.new(first_name: "", email: "test@test.com")).not_to be_valid
   end

end

