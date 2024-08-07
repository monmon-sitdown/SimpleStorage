import "./App.css";
import React from "react";
import SimpleStorage from "./SimpleStorage";

/**
 * @title App
 * @dev Main React component rendering the SimpleStorage component
 */
function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Simple Storage Smart Contract Example</h1>
        <SimpleStorage />
      </header>
    </div>
  );
}

export default App;
