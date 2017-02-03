class Shout < ApplicationRecord
  belongs_to :user
  validates :body, presence: true

  default_scope { order("created_at DESC") }
end
