import React, { useState } from 'react';
import axios from 'axios';

const Register = (props) => {
    const [name, setName] = useState('');
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');

    const handleName = e => {
        setName(e.target.value);
    };

    const handleEmail = e => {
        setEmail(e.target.value);
    };

    const handlePassword = e => {
        setPassword(e.target.value);
    };

    const handleSubmit = e => {
        e.preventDefault();
        axios({
            method: 'post',
            url: '/api/register',
            data: {
              name: name,
              email: email,
              password: password,
            }
          }).then(res => {
            props.history.push('/login');
          }).catch(error => {
              console.log(error);
          });
    };

    return (
        <form onSubmit={handleSubmit}>
            <div className="form-group">
                <label htmlFor="inputName">Name</label>
                <input 
                    type="name" 
                    className="form-control" 
                    id="inputName" 
                    aria-describedby="nameHelp" 
                    placeholder="Enter name" 
                    value={name} 
                    onChange={handleName}
                    />
            </div>
            <div className="form-group">
                <label htmlFor="inputEmail">Email address</label>
                <input 
                    type="email" 
                    className="form-control" 
                    id="inputEmail" 
                    aria-describedby="emailHelp" 
                    placeholder="Enter email" 
                    value={email} 
                    onChange={handleEmail}
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

export default Register;