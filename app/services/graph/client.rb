module Graph
  Client = GraphQL::Client.new(schema: Graph::Schema, execute: Graph::Schema)
end
