require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "#rendered_body" do
    let(:article) { Article.new(body: "hello **dog**") }

    it "renders the markdown to HTML" do
      expect(article.rendered_body).to eq("<p>hello <strong>dog</strong></p>\n")
    end
  end
end
