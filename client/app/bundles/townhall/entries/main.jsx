import React from 'react';
import ReactOnRails from 'react-on-rails';

import NewArticle from "../components/pages/new-article";
import Home from '../components/pages/home';
import Article from '../components/article';

ReactOnRails.register({ Home, Article, NewArticle });
