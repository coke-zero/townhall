class ArticlesController < ApplicationController
  def index
    result = Graph::Schema.execute(Graph::Queries::Articles).fetch("data")

    render component: 'ArticleList', props: { articles: result["articles"] }
  end


  def show
    query = <<~GQL
      {
        article(id: #{params[:id]}) {
          title
          rendered_body
        }
      }
    GQL

    result = Graph::Schema.execute(query).fetch("data")

    render component: 'Article', props: result
  end
end
