import React from "react";
import "../../sass/App.scss";
import { Route, Redirect, Switch } from "react-router-dom";
import LoginPanel from "./LoginPanel";
import HomePanel from "./HomePanel";

function App() {
  return (
    <div className="stuff-app">
      <Switch>
        <Route path="/login" exact component={LoginPanel} />
        <Route path="/home" exact component={HomePanel} />
        <Redirect to="/home" />
      </Switch>
    </div>
  );
}

export default App;
