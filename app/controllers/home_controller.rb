class HomeController < ApplicationController
  def index
    results = Graph::Schema.execute <<~GQL
      query {
        articles {
          id
          title
          teaser
          url
        }

        topics {
          id
          name
          articlesCount
        }
      }
    GQL

    @props =  results.fetch("data")
    render component: "Home", props: results.fetch("data")
  end
end
