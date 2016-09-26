module Graph
  QueryType = GraphQL::ObjectType.define do
    name "Query"
    description "The query root of this schema"

    field :article do
      type ArticleType

      argument :id, !types.ID

      resolve -> (obj, args, ctx) { Article.find(args[:id]) }

    end

    field :articles do
      type types[ArticleType]

      resolve -> (obj, args, ctx) { Article.all }
    end

    field :recent_topics do
      type types[TopicType]

      resolve -> (obj, args, ctx) do
        Topic.recent
      end
    end
  end
end
