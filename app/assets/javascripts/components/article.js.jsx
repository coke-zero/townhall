class Article extends React.Component {
  render() {
    var { article } = this.props;

    return (
      <div>
        <h1>{ article.title }</h1>
        <div dangerouslySetInnerHTML={{ __html: article.rendered_body }}/>
      </div>
    )
  }
}
