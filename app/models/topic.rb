class Topic < ApplicationRecord
  has_many :topic_memberships
  has_many :articles, through: :topic_memberships
end
