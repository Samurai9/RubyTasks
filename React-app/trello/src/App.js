/* eslint-disable */

import logo from './logo.svg';
import './App.css';

import ToDoPage from './components/pages/ToDoPage';



function App() {

  const Application = () => {
    return (<ToDoPage/>)
  }

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
        <Application/>
        </p>
      </header>
    </div>


  );
}

export default App;
