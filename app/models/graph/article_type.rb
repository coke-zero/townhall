module Graph
  ArticleType = GraphQL::ObjectType.define do
    name "Article"
    description "An article written for the knowledge base"

    field :id, !types.Int
    field :title, !types.String
    field :body, types.String
    field :teaser, types.String
    field :rendered_body, types.String
    field :author, -> { !UserType } do
      resolve -> (article, args, ctx) do
        RecordLoader.for(User).load(article.author_id)
      end
    end

    field :url do
      type !types.String

      resolve ->(article, args, ctx) do
        Rails.application.routes.url_helpers.article_path(article)
      end
    end
  end
end
