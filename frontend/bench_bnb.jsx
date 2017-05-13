import React from 'react';
import ReactDOM from 'react-dom';

import * as SessionUtil from './util/session_api_util';

window.SessionUtil = SessionUtil;

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<h1>Welcome to BenchBNB!</h1>, root);
});
