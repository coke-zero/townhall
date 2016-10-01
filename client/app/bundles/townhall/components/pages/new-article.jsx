import React from "react";
import ReactMarkdown from "react-markdown";

import ArticleEditor from "../article-editor";

export default class NewArticle extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      body: "",
      title: ""
    }
  }

  updateBody(body) {
    this.setState({ body });
  }

  saveArticle() {

  }

  render() {
    return (
      <div className="new-article">
        <div className="top-bar">
          <input  type="text"
                  className="title"
                  value={ this.state.title }
                  onChange={ (e) => this.updateTitle(e.target.value) }
                  placeholder="Enter the title"
          />
          <button onChange={ () => this.saveArticle() }>Save</button>
        </div>
        <div className="editor">
          <textarea value={ this.state.body }
                    onChange={ (e) => this.updateBody(e.target.value) }
                    placeholder="Start writing the article..."
          />
        </div>
        <div className="preview">
          <ReactMarkdown source={this.state.body} escapeHtml={ true }/>
        </div>
      </div>
    )
  }
}
