module Graph
  Schema = GraphQL::Schema.define do
    query QueryType
    max_depth 8
  end
end
