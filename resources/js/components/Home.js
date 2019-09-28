import React, {useState, useEffect} from 'react';

const Home = () => {
    const [users, setUsers] = useState([]);
    const token = localStorage.getItem('access_token');

    useEffect(() => {
        fetchUsers();
    }, []);

   const fetchUsers = () => {
        axios({
            method: 'get',
            url: '/api/users',
            headers: {
                'Accept': 'application/json',
                'Authorization' : 'Bearer ' + token,
            },
          }).then(res => {
                const users= res.data;
                setUsers(users);
                console.log(users);
          }).catch(error => {
              console.log(error);
          });
   };
    return (
        <h1>Home</h1>
    );
};

export default Home;