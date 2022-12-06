require 'rails_helper'
require 'capybara'

RSpec.describe Post, type: :feature do
  let!(:post) do
    Post.first
  end

  before(:example) { visit post_path(post) }

  it 'can see the post title' do
    expect(page).to have_content(post.title)
  end

  it 'can see the post content' do
    expect(page).to have_content(post.text)
  end

  it 'can see the post comments counter' do
    expect(page).to have_content(post.comments.count)
  end

  it 'can see the post likes counter' do
    expect(page).to have_content(post.likes.count)
  end

  it 'can see the post user name' do
    expect(page).to have_content(post.author.name)
  end

  it 'can see the post user profile picture' do
    expect(page).to have_scss("img[src*='#{post.user.profile_picture}']")
  end

  it 'can see the post user posts counter' do
    expect(page).to have_content(post.user.posts.count)
  end

  it 'can see the post user comments counter' do
    expect(page).to have_content(post.user.comments.count)
  end

  it 'can see the post user likes counter' do
    expect(page).to have_content(post.user.likes.count)
  end
end
