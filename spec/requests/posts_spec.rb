require 'rails_helper'

RSpec.describe PostsController, type: :request do

	describe "GET #index" do
		it "returns http success" do
			get posts_path
			expect(response).to have_http_status(:success)
		end
	end

	describe "GET #show" do
		it "returns http success" do
			get users_path(1)
			expect(response).to have_http_status(:success)
		end
	end
end
