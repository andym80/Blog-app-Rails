require 'rails_helper.rb'

RSpec.describe User, type: :model do

 describe 'name must not be blank' do
	   it 'should not be blank' do
	   user = User.new(name: 'Tom')
	   expect(user.name).not_to be_blank
		 end
 end

  describe 'PostsCounter must be an integer greater than or equal to zero' do
		it 'should be an integer greater than or equal to zero' do
		user = User.new(posts_counter: 0)
		expect(user.posts_counter).to be >= 0
		end
	end

  describe 'recent_posts_last_three' do
		it { should respond_to(:recent_posts_last_three) }
  end
end
