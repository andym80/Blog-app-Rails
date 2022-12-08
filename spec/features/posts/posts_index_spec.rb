require 'rails_helper'

RSpec.describe 'Posts Index', type: :request do
  before(:each) do
    @user = User.create(
      name: 'Andy Menutti',
      bio:'Software Engineer / Sr.Sound Designer'
      photo:'https://shorturl.at/nJVX7',
      post_counter: 0
    )

    @post1 = Post.create(
      author_id: @user.id,
      title: 'This is my first post',
      text: 'This is the content of my first post',
      comments_counter: 0,
      likes_counter: 0
    )

    @post2 = Post.create(
      author_id: @user.id,
      title: 'This is my second post',
      text: 'This is the content of my second post',
      comments_counter: 0,
      likes_counter: 0
    )
    @post3 =
    Post.create(
      author_id: @user.id,
      title: 'This is my third post',
      text: 'This is the content of my third post',
      comments_counter: 0,
      likes_counter: 0
    )
    @post4 =
    Post.create(
      author_id: @user.id,
      title: 'This is my fourth post',
      text: 'This is the content of my fourth post',
      comments_counter: 0,
      likes_counter: 0
    )
  end

  describe 'GET #index' do
    it 'returns http success' do
      get users_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get users_path(1)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #users' do
    it 'returns http success' do
      get users_path(1)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #users' do
    it 'returns http success' do
      get users_path(1)
      expect(response).to have_http_status(:success)
    end
  end

end

    # it 'can see which users have written posts' do
    #   expect(page).to have_content('post.user.name')
    # end

    # it 'can see how many comments each post has' do
    #   expect(page).to have_content('post.comments_counter')
    # end

    # it 'can see how many likes each post has' do
    #   expect(page).to have_content('post.likes_counter')
    # end

    # it 'can see the post content' do
    #   expect(page).to have_content('post.content')
    # end

    # it 'can see the username of each commentor' do
    #   post.comment.each do |comment|
    #   expect(page).to have_content('comment.user.name')
    #   end
    # end

    # it 'that asserts you can see how many comments a post has' do
    #   expect(page).to have_content('post.comments_counter')
    # end

    # it 'can see the first comments on a post.' do
    #   expect(page).to have_content('post.comment.first')
    # end

    # it 'can see the content of each comment left' do
    #   post.comment.each do |comment|
    #   expect(page).to have_content('comment.text')
    #   end
    # end

    # it 'can see the number of likes each comment has' do
    #   post.comment.each do |comment|
    #   expect(page).to have_content('comment.likes_counter')
    #   end
    # end


    # it 'can see the number of post with likes' do
    #   expect(page).to have_content('post.likes_counter')
    # end

    # it 'can see a section for pagination if there are more posts than fit on the view' do
    #   expect(page).to have_content('post.pagination')
    # end

    # it 'redirects to the posts show page when you click on a post' do
    #   expect(page).to have_content('post_path')
    # end

end
