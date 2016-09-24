module Graph
  QueryType = GraphQL::ObjectType.define do
    name "Query"
    description "The query root of this schema"

    field :articles do
      type types[ArticleType]

      resolve -> (obj, args, ctx) { Article.all }
    end
  end
end
