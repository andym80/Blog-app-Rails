class User < ApplicationRecord
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :photo, presence: true

  has_many :posts, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'

  def recent_posts_last_three(_id)
    posts.order(created_at: :desc).limit(3)
  end

end
