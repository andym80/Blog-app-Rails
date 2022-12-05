#require 'capybara/rspec'

# RSpec.describe 'User show page', type: :feature do

#   before(:each) do
# 	@user = User.create!(name: 'Tom')
#   end

#   it 'can see the user profile picture' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_scss("img[src*='#{user.profile_picture}']")
#   end

#   it 'can see the user name' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_content(user.name)
#   end

#   it 'can see the user posts counter' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_content(user.posts.count)
#   end

#   it 'I can see a post title' do
# 	user = create(:user)
# 	post = create(:post, user: user)
# 	visit user_path(user)
# 	expect(page).to have_content(post.title)
#   end

#   it 'can see the user post content' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_content(user.posts.first.content)
#   end

#   it 'can see the user post comments counter' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_content(user.posts.first.comments.count)
#   end

#   it 'I can see the first comments on a post' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_content(user.posts.first.comments.first.content)
#   end

#   it 'can see the user post likes counter' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_content(user.posts.first.likes.count)
#   end

#   it 'can see a section for pagination if there are more posts than fit on the view' do
# 	user = create(:user)
# 	visit user_path(user)
# 	expect(page).to have_scss('.pagination')
#   end

#   it 'When I click on a post, it redirects me to that posts show page' do
# 	user = create(:user)
# 	visit user_path(user)
# 	click_link(user.posts.first.content)
# 	expect(current_path).to eq(post_path(user.posts.first))
#   end










