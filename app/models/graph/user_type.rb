module Graph
  UserType = GraphQL::ObjectType.define do
    name "User"

    description "A user of the system"

    field :id, !types.Int
    field :name, !types.String
    field :email, types.String
  end
end
