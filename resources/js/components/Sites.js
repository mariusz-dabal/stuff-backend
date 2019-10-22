import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTrashAlt } from '@fortawesome/free-solid-svg-icons';
import { faPencilAlt } from '@fortawesome/free-solid-svg-icons';
import { Link } from 'react-router-dom';

const Sites = () => {
    const [sites, setSites] = useState([]);
    const token = localStorage.getItem('access_token');

    useEffect(() => {
        fetchSites();
    }, []);

   const fetchSites = () => {
        axios({
            method: 'get',
            url: '/api/sites',
            headers: {
                'Accept': 'application/json',
                'Authorization' : 'Bearer ' + token,
            },
          }).then(res => {
                const sites = res.data;
                setSites(sites);
                console.log(sites);
          }).catch(error => {
              console.log(error);
          });
   };

   const handleDelete = id => {
    axios({
        method: 'delete',
        url: '/api/sites/' + id,
        headers: {
            'Accept': 'application/json',
            'Authorization' : 'Bearer ' + token,
        },
      }).then(res => {
        const filterdSites = sites.filter(site => {
            return site.id !== id;
        });
        setSites(filterdSites);
        console.log(res);
      }).catch(error => {
          console.log(error);
      });
   };
    return (
        <React.Fragment>
            <div className="row">
                <div className="col-8">
                    <h1>Users Sites</h1>
                </div>
                <div className="col-4 pl-5">
                <Link to="/sites/store">
                    <button className="btn btn-dark">Add Site</button>
                </Link>
                </div>
            </div>
            <table className="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">url</th>
                        <th scope="col">Date</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    { sites.map(site => (
                        <tr key={site.id}>
                            <td>{site.id}</td>
                            <td>{site.name}</td>
                            <td>{site.url}</td>
                            <td>{site.created_at}</td>
                            <td>
                                <Link to= {`/sites/edit/${site.id}`} >
                                    <button className="btn btn-light"><FontAwesomeIcon icon={faPencilAlt} /></button>
                                </Link>
                                </td>
                            <td><button
                                    className="btn btn-light"
                                    onClick={() => handleDelete(site.id)}
                                    >
                                        <FontAwesomeIcon icon={faTrashAlt} />
                                </button></td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </React.Fragment>
    );
};

export default Sites;
