import React, {useState} from 'react';
import { Link } from 'react-router-dom';
const Navbar = (props) => {
    return (
        <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
            <Link to="/">
                <span className="navbar-brand">/Suff</span>
            </Link>
            <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span className="navbar-toggler-icon"></span>
            </button>
            <div className="collapse navbar-collapse" id="navbarNav">
                <ul className="navbar-nav">
                <Link to="/login">
                    <li className="nav-item">
                        <span className="nav-link">Login</span>
                    </li>
                </Link>
                <Link to="/register">
                    <li className="nav-item">
                        <span className="nav-link">Register</span>
                    </li>
                </Link>
                <Link to="/sites">
                    <li className="nav-item">
                        <span className="nav-link">Sites</span>
                    </li>
                </Link>
                <Link to="/logout">
                    <li className="nav-item">
                        <span className="nav-link">Logout</span>
                    </li>
                </Link>
                </ul>
            </div>
        </nav>
    );
};

export default Navbar;