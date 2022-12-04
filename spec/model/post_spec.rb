require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'title must not be blank' do
    it 'should not be blank' do
      post = Post.new(title: 'Hello')
      expect(post.title).not_to be_blank
    end
  end

  describe 'title must be at least 3 characters long' do
    it 'should be at least 3 characters long' do
      post = Post.new(title: 'Hello')
      expect(post.title.length).to be >= 3
    end
  end

  describe 'title must be at most 250 characters long' do
    it 'should be at most 250 characters long' do
      post = Post.new(title: 'Hello')
      expect(post.title.length).to be <= 250
    end
  end

  describe 'comments_counter must be an integer greater than or equal to zero' do
    it 'should be an integer greater than or equal to zero' do
      post = Post.new(comments_counter: 0)
      expect(post.comments_counter).to be >= 0
    end
  end

  describe 'likes_counter must be an integer greater than or equal to zero' do
    it 'should be an integer greater than or equal to zero' do
      post = Post.new(likes_counter: 0)
      expect(post.likes_counter).to be >= 0
    end
  end

  describe 'recent_comments' do
    it { should respond_to(:recent_comments) }
  end
end
