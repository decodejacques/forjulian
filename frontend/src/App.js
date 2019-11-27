import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';


class App extends Component {
  componentDidMount = async () => {
    let resp = await fetch('')
    let text = await resp.text()
    console.log(text)
  }
  render = () => {
    return (
      <div className="App">
        <img src='http://localhost:8000/plot?randnum=30' />
      </div>
    );
  }
}

export default App;
