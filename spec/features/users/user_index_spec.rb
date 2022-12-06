require 'rails_helper'
require 'capybara'

RSpec.describe 'show all users', type: :feature do
  let!(:users) do
    User.all
  end

  context 'visit /users' do
    before(:example) do
      visit users_path
    end

    it 'I can see the username of all other users.' do
      users.each do |user|
        expect(page).to have_content user.name
      end
    end

    it 'I can see the profile picture for each user.' do
      users.each do |user|
        expect(page.find("#user_id_#{user.id}").find('.user-photo')['src']).to have_content user.photo
      end
    end

    it 'I can see the number of posts each user has written.' do
      users.each do |user|
        expect(page.find("#user_id_#{user.id}")).to have_content "Number of posts: #{user.posts_count}"
      end
    end

    it "When I click on a user, I am redirected to that user's show page." do
      users.each do |user|
        page.find('a', text: user.name).click
        expect(current_path).to eq user_path user
        visit users_path
      end
    end
  end
end
