require 'rails_helper'

describe UsersController, :type => :controller do 

	before do
		@user = User.create!(email: "test@test.com", password: "test55")
		@user2 = User.create!(email: "test1@test.com", password: "test55")
	end

	describe "GET #show" do
		context "User is logged in" do
			before do
			sign_in @user
		end

		it "loads correct user details" do
			get :show, id: @user.id
			expect(response).to be_success
			expect(response).to have_http_status(200)
			expect(assigns(:user)).to eq @user
		end

		it "cannot see account pages of second user" do
			get :show, id: @user.id
			expect(assigns(:user)).not_to eq @user2
			expect(response).to redirect_to(root_path)
		end
	end

	context "User is not logged in" do
		it "redirects to login" do
			get :show, id: @user.id
			expect(response).to redirect_to(new_user_session_path)
		end
	end

end
end
