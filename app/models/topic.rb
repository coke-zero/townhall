class Topic < ApplicationRecord
  has_many :topic_memberships
  has_many :articles, through: :topic_memberships

  scope :recent, -> { order(updated_at: :desc).limit(5) }
end
