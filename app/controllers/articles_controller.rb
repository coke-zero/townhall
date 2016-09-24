class ArticlesController < ApplicationController
  def index
    result = Graph::Schema.execute(Graph::Queries::Articles).fetch("data")

    render component: 'ArticleList', props: { articles: result["articles"] }
  end
end
