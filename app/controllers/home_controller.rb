class HomeController < ApplicationController
  def index
    results = Graph::Schema.execute <<~GQL
      query {
        articles {
          id
          title
          teaser
        }

        topics {
          id
          name
          articlesCount
        }
      }
    GQL

    render component: "Home", props: results.fetch("data")
  end
end
