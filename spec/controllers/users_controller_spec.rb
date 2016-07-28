require 'rails_helper'

describe UsersController, :type => :controller do 
	context "sign in user" do

		let(:user) { User.create!(email: "test@test.com", password: "test55") }

	describe "GET #show" do
		context "User is logged in" do
			before do
				@user1 = User.create!(email: "test1@test.com", password: "test55")
			sign_in user
		end

		it "loads correct user details" do
			get :show, id: user.id
			expect(response).to have_http_status(200)
			expect(assigns(:user)).to eq user
		end

		it "redirects to landing page" do
			get :edit, id: @user1.id
			expect(response).to have_http_status(302)
			expect(response).to redirect_to(root_path)
		end
	end

	context "No user logged in" do
		it "redirects to login" do
			get :show, id: user.id
			expect(response).to redirect_to(new_user_session_path)
		end
	end

end
end
end
