require 'rails_helper'

RSpec.describe Comment, type: :model do


	describe 'author_id must be an integer' do
		it 'should be an integer' do
			comment = Comment.new(author_id: 1)
			expect(comment.author_id).to be_an(Integer)
		end
	end

	 describe 'post_id must be an integer' do
	 	it 'should be an integer' do
	 		comment = Comment.new(post_id: 1)
	 		expect(comment.post_id).to be_an(Integer)
	 	end
	 end

	 describe 'author_id must be an integer' do
	 	it 'should be an integer' do
	 		comment = Comment.new(author_id: 1)
	 		expect(comment.author_id).to be_an(Integer)
	 	end
	 end

	 describe 'post must be present' do
	 	it 'should be present' do
	 		comment = Comment.new(post_id: '180')
	 		expect(comment.post_id).not_to be_blank
	 	end
	 end

	describe 'author must be present' do
		it 'should be present' do
			comment = Comment.new(author_id: '180')
			expect(comment.author_id).not_to be_blank
		end
	end
end
