import React, { useState } from 'react';

const Store = (props) => {
    const [name, setName] = useState('');
    const [url, setUrl] = useState('');
    const [notes, setNotes] = useState('');
    const [status, setStatus] = useState('1');
    const [token, setToken] = useState(localStorage.getItem('access_token'));

    const handleSubmit = e => {
        e.preventDefault();
        const formData = new FormData();
        formData.append("name", name);
        formData.append("url", url);
        formData.append("notes", notes);
        formData.append("important", parseInt(status));

        fetch('/api/categories/6/groups/8/sites', {
            method: "post",
            headers: {
                "Authorization" : "Bearer " + token,
            },
            body: formData,
        })
        .then(res => {
            props.history.push('/sites');
            console.log('form data:',formData);
            console.log(res);
        }).catch(error => {
            console.log(error);
        });

    };

    return (
        <form onSubmit={handleSubmit}>
            <div className="form-group">
                <label htmlFor="inputName">Name</label>
                <input
                    type="text"
                    className="form-control"
                    id="inputName"
                    placeholder="Enter name"
                    value={name}
                    onChange={e => setName(e.target.value)}
                    />
            </div>
            <div className="form-group">
                <label htmlFor="inputUrl">Url</label>
                <input
                    type="text"
                    className="form-control"
                    id="inputUrl"
                    placeholder="Enter Url"
                    value={url}
                    onChange={e => setUrl(e.target.value)}
                    />
            </div>
            <div className="form-group">
                <label htmlFor="inputNotes">Notes</label>
                <input
                    type="text"
                    className="form-control"
                    id="inputNotes"
                    placeholder="Enter Notes"
                    value={notes}
                    onChange={e => setNotes(e.target.value)}
                    />
            </div>
            <div className="form-group">
                <label htmlFor="inputStatus">Status</label>
                <select className="custom-select mr-sm-2"
                        id="inputStatus"
                        onChange={e => setStatus(e.target.value)}
                        value={status}
                        >
                    <option value="1">Important</option>
                    <option value="0">Normal</option>
                </select>
            </div>

            <button type="submit" className="btn btn-primary">Submit</button>
        </form>
    );
}

export default Store;
