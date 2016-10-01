class HomeController < ApplicationController
  HomeQuery = Graph::Client.parse <<~GQL
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

      topics: recent_topics {
        id
        name
        articlesCount
      }
    }
  GQL

  def index
    @props = Graph::Client.query(HomeQuery).data.to_h
  end
end
