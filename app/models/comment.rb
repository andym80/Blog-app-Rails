class Comment < ActiveRecord::Base
  validates :author_id, :post_id, :body, presence: true
  validates :author_id, :post_id, numericality: { only_integer: true }

  belongs_to :author,
             class_name: 'User',
             foreign_key: :author_id

  belongs_to :post

  after_create :update_comments_counter

  after_destroy do
    post.decrement!(:comments_counter)
  end

  private

  def update_comments_counter
    post.increment!(:comments_counter)
  end
  end
end
