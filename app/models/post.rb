class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :comments
  has_many :likes

  def update_posts_counter(id)
		user = User.find(id)
		user.posts_counter = user.posts.count
		user.save
  end

  def recent_comments(post_id)
    Comment.where(post_id: post_id).order(created_at: :desc).limit(5)
	end
end
