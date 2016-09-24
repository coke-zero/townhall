module Graph
  module Queries
    Articles = <<~GQL
      query {
        articles {
          title
          body
        }
      }
    GQL
  end
end
