class Home extends React.Component {
  render() {
    var { articles, topics } = this.props;

    return(
      <div className="home">
        <section className="search">
          <ArticleSearch/>
        </section>

        <section className="content">
          <div className="recent-articles">
            <h3>Popular Articles</h3>
            <ul>
              {
                articles.map(article => {
                  return(
                    <li key={ article.id }>
                      <h3>
                        <a href={ article.url }>{ article.title}</a>
                      </h3>
                      <p>{ article.teaser }</p>
                    </li>
                  );
                })
              }
            </ul>
          </div>

          <div className="recent-topics">
            <ul>
              {
                topics.map(topic => {
                  return (
                    <li key={ topic.id } className="topic">
                      { topic.name }
                      <p>{ topic.articlesCount }</p>
                    </li>
                  );
                })
              }
            </ul>
          </div>
        </section>
      </div>
    );
  }
}
