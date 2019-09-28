import React, { useState } from 'react';
import ReactDOM from 'react-dom';
import {BrowserRouter as Router, Switch, Route} from 'react-router-dom';
import Navbar from './Navbar';
import Login from './Login';
import Register from './Register';
import Logout from './Logout';
import Sites from './Sites';
import Store from './Store';
import Edit from './Edit';
import Home from './Home';
import { ProtectedRoute } from './ProtectedRoute';

const App = () => {
    
    return (
        <Router>
            <React.Fragment>
                <Navbar />
                <div className="container mt-5">
                    <Switch>
                        <Route exact path="/" component={Home}/>
                        <Route exact path="/login" component={Login}/>
                        <Route exact path="/register" component={Register}/>
                        <Route exact path="/logout" component={Logout}/>
                        <ProtectedRoute exact path="/sites" component={Sites}/>
                        <ProtectedRoute exact path="/sites/store" component={Store}/>
                        <ProtectedRoute exact path="/sites/edit/:id" component={Edit}/>
                        <Route path="*" component={() => '404 not found'} />
                    </Switch>
                </div>
            </React.Fragment>
        </Router>
    );
}

if (document.getElementById('root')) {
    ReactDOM.render(<App />, document.getElementById('root'));
}
