require 'rails_helper'

 describe User do

    it "is not valid" do
      expect(User.new(name: "", email: "test@test.com")).not_to_be_valid
   end

end

