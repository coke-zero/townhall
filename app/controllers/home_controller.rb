class HomeController < ApplicationController
  def index
    results = Graph::Schema.execute <<~GQL
      query {
        articles {
          id
          title
          teaser
          url
          author {
            name
          }
        }

        topics {
          id
          name
          articlesCount
        }
      }
    GQL

    @props =  results.fetch("data")
  end
end
