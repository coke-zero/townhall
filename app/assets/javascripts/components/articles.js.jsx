var ArticleList = class ArticleList extends React.Component {
  render() {
    var { articles } = this.props

    return(
        <div>
          <h1>Articles</h1>
          {
            articles.map(article => {
              return(
                <div>
                  <h3>{ article.title }</h3>
                  <p>{ article.body }</p>
                </div>
              )
            })
          }
        </div>
    );
  }
}
