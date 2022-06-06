import logo from './logo.svg';
import './App.css';
import Login from '../src/screen/Login.js';
import { Route, Routes, Link } from 'react-router-dom';

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<Login />} />
        {/* <Route path="/about" element={<About />} /> */}
      </Routes>
    </div>
  );
}

export default App;
