class Like < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  belongs_to :post

  def update_likes_counter(id)
    post = Post.find(id)
    post.likes_counter = post.likes.count
    post.save
  end
end
