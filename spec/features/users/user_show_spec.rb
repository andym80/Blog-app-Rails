require 'rails_helper'
require 'capybara'


RSpec.describe Post, type: :features do

	it 'can see the post title' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.title)
	end

	it 'can see the post content' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.content)
	end

	it 'can see the post comments counter' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.comments.count)
	end

	it 'can see the post likes counter' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.likes.count)
	end

	it 'can see the post user name' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.user.name)
	end

	it 'can see the post user profile picture' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_scss("img[src*='#{post.user.profile_picture}']")
	end

	it 'can see the post user posts counter' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.user.posts.count)
	end

	it 'can see the post user comments counter' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.user.comments.count)
	end

	it 'can see the post user likes counter' do
		post = create(:post)
		visit post_path(post)
		expect(page).to have_content(post.user.likes.count)
	end
end