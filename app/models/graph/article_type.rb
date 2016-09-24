module Graph
  ArticleType = GraphQL::ObjectType.define do
    name "Article"
    description "An article written for the knowledge base"

    field :title, !types.String
    field :body, types.String
  end
end
