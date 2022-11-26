require	'rails_helper'

RSpec.describe Like, type: :model do
  describe 'author_id must be an integer' do
    it 'should be an integer' do
      like = Like.new(author_id: 1)
      expect(like.author_id).to be_an(Integer)
    end
  end

  describe 'post_id must be an integer' do
    it 'should be an integer' do
      like = Like.new(post_id: 1)
      expect(like.post_id).to be_an(Integer)
    end
  end
  describe 'author_id must be an integer' do
    it 'should be an integer' do
      like = Like.new(author_id: 1)
      expect(like.author_id).to be_an(Integer)
    end
  end

  describe 'post_id must be an integer' do
    it 'should be an integer' do
      like = Like.new(post_id: 1)
      expect(like.post_id).to be_an(Integer)
    end
  end

  describe 'author_id must be an integer' do
    it 'should be an integer' do
      like = Like.new(author_id: 1)
      expect(like.author_id).to be_an(Integer)
    end
  end

  describe 'post_id must be an integer' do
    it 'should be an integer' do
      like = Like.new(post_id: 1)
      expect(like.post_id).to be_an(Integer)
    end
  end

  describe 'author must be present' do
    it 'should be present' do
      like = Like.new(author_id: '180')
      expect(like.author_id).not_to be_blank
    end
  end
end
