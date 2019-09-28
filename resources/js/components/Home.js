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
        <React.Fragment>
            <div className="row">
                <div className="col-8">
                    <h1>Users</h1>
                </div>
            </div>
            <table className="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">Password</th>
                    </tr>
                </thead>
                <tbody>
                    { users.map(user => (
                        <tr key={user.id}>
                            <td>{user.id}</td>
                            <td>{user.name}</td>
                            <td>{user.email}</td>
                            <td>password</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </React.Fragment>
    );
};

export default Home;