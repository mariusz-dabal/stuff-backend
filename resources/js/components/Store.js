import React, { useState } from 'react';

const Store = (props) => {
    const [parent, setParent] = useState('');
    const [group, setGroup] = useState('');
    const [name, setName] = useState('');
    const [url, setUrl] = useState('');
    const [notes, setNotes] = useState('');
    const [image, setImage] = useState(null);
    const [status, setStatus] = useState('1');
    const [token, setToken] = useState(localStorage.getItem('access_token'));

    const handleSubmit = e => {
        e.preventDefault();
        const formData = new FormData();
        formData.append("group_id", parseInt(group));
        formData.append("name", name);
        formData.append("url", url);
        formData.append("notes", notes);
        formData.append("image", image);
        formData.append("important", parseInt(status));

        fetch('/api/sites', {
            method: "post",
            headers: {
                "Accept": "application/json",
                "Authorization" : "Bearer " + token,
            },
            body: formData,
        })
        // .then(res => res.json())
        .then(res => {
            props.history.push('/sites');
            console.log(res);
        }).catch(error => {
            console.log(error);
        });

    };

    return (
        <form onSubmit={handleSubmit}>
            <div className="form-group">
                <label htmlFor="inputGroup">Group ID</label>
                <input
                    type="number"
                    className="form-control"
                    id="inputGroup"
                    placeholder="group id"
                    value={group}
                    onChange={e => setGroup(e.target.value)}
                    />
            </div>
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
            <div className="input-group mb-3">
                <div className="input-group-prepend">
                    <span className="input-group-text">Upload</span>
                </div>
                <div className="custom-file">
                    <input
                        type="file"
                        className="custom-file-input"
                        id="inputImage"
                        onChange={e => setImage(e.target.files[0])}
                        />
                    <label className="custom-file-label" htmlFor="inputImage">Choose file</label>
                </div>
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
