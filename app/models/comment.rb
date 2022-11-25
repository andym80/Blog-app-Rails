class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :post, foreign_key: 'post_id'

  def update_comments_counter(id)
    post = Post.find(id)
    post.comments_counter = post.comments.count
    post.save
  end
end
