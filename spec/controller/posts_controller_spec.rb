require 'posts_controller'

RSpec.describe PostsController, type: :controller do

	describe "GET #index" do
		it "returns http success" do
			get :index
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #show" do
		it "returns http success" do
			get :show
			expect(response).to have_http_status(:success)
		end
	end
end
