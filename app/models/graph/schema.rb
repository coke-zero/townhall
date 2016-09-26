module Graph
  Schema = GraphQL::Schema.define do
    query QueryType
    max_depth 8
  end
  Schema.query_execution_strategy = GraphQL::Batch::ExecutionStrategy
  Schema.mutation_execution_strategy = GraphQL::Batch::MutationExecutionStrategy
end
