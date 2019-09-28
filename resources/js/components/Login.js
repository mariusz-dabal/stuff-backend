import React, { useState } from 'react';
import axios from 'axios';

const Login = (props) => {
    const [login, setLogin] = useState('');

    const [password, setPassword] = useState('');

    const [token, setToken] = useState(localStorage.getItem('access_token') || null);

    const handleLogin = e => {
        setLogin(e.target.value);
    };

    const handlePassword = e => {
        setPassword(e.target.value);
    };

    const handleSubmit = e => {
        e.preventDefault();
        axios({
            method: 'post',
            url: '/api/login',
            data: {
              username: login,
              password: password,
            }
          }).then(res => {
            const token = res.data.access_token;
            localStorage.setItem('access_token', token);
            setToken(token);
            props.history.push('/sites');
          }).catch(error => {
              console.log(error);
          });
    };

    return (
        <form onSubmit={handleSubmit}>
            <div className="form-group">
                <label htmlFor="inputEmail">Email address</label>
                <input 
                    type="email" 
                    className="form-control" 
                    id="inputEmail" 
                    aria-describedby="emailHelp" 
                    placeholder="Enter email" 
                    value={login} 
                    onChange={handleLogin}
                    />
            </div>
            <div className="form-group">
                <label htmlFor="inputPassword">Password</label>
                <input 
                    type="password" 
                    className="form-control" 
                    id="inputPassword" 
                    placeholder="Password" 
                    value={password} 
                    onChange={handlePassword}
                    />
            </div>
            <button type="submit" className="btn btn-primary">Submit</button>
        </form>
    );
}

export default Login;