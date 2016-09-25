class ArticlesController < ApplicationController
  def show
    query = <<~GQL
      {
        article(id: #{params[:id]}) {
          title
          rendered_body
        }
      }
    GQL

    @props = Graph::Schema.execute(query).fetch("data")
  end
end
