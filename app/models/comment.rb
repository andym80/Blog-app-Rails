class Comment < ActiveRecord::Base
  validates :author_id, :post_id, :body, presence: true
  validates :author_id, :post_id, numericality: { only_integer: true }

  belongs_to :author,
             class_name: 'User',
             foreign_key: :author_id

  belongs_to :post
end
