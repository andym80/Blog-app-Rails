require 'rails_helper'
require 'capybara'
require_relative '../config/environment'

RSpec.describe 'show all users', type: :feature do
  let!(:users) do
    User.all
  end

  context 'visit /users' do
    before(:example) do
      visit users_path
    end

    it 'I can see the profile picture for each user.' do
      users.each do |user|
        expect(page).to have_css("img[src*='#{user.photo}']")
      end
    end

    it 'I can see the number of posts each user has written.' do
      users.each do |user|
        expect(page.find("#user_id_#{user.id}")).to have_content "Number of posts: #{user.posts_counter}"
      end
    end
  end
end
