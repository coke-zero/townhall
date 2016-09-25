class Article < ApplicationRecord
  validates :title, presence: true
  has_many :topic_memberships
  has_many :topics, through: :topic_memberships

  def teaser
    body&.truncate(200)
  end

  def rendered_body
    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer, extensions = {})

    markdown.render(body)
  end
end
