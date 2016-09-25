module Graph
  TopicType = GraphQL::ObjectType.define do
    name "Topic"
    description "An article written for the knowledge base"

    field :id, !types.Int
    field :name, !types.String
    field :articlesCount do
      type !types.Int

      resolve-> (obj, args, ctx) do
        obj.articles.count
      end
    end
  end
end
