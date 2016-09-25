module Graph
  ArticleType = GraphQL::ObjectType.define do
    name "Article"
    description "An article written for the knowledge base"

    field :id, !types.Int
    field :title, !types.String
    field :body, types.String
    field :teaser, types.String
  end
end
