import React, { useState } from 'react';

const Store = (props) => {
    const [parent, setParent] = useState('');
    const [category, setCategory] = useState('');
    const [name, setName] = useState('');
    const [url, setUrl] = useState('');
    const [notes, setNotes] = useState('');
    const [thumbnail, setThumbnail] = useState(null);
    const [size, setSize] = useState('1');
    const [status, setStatus] = useState('1');
    const [token, setToken] = useState(localStorage.getItem('access_token'));

    const handleSubmit = e => {
        e.preventDefault();
        const formData = new FormData();
        formData.append("parent_id", parseInt(parent));
        formData.append("category_id", parseInt(category));
        formData.append("name", name);
        formData.append("url", url);
        formData.append("notes", notes);
        formData.append("thumbnail", thumbnail);
        formData.append("size_id", parseInt(size));
        formData.append("status_id", parseInt(status));
   
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
                <label htmlFor="inputParent">Parent ID</label>
                <input 
                    type="number" 
                    className="form-control" 
                    id="inputParent" 
                    placeholder="parent id" 
                    value={parent} 
                    onChange={e => setParent(e.target.value)}
                    />
            </div>
            <div className="form-group">
                <label htmlFor="inputCategory">Category ID</label>
                <input 
                    type="number" 
                    className="form-control" 
                    id="inputCategory" 
                    placeholder="Category id" 
                    value={category} 
                    onChange={e => setCategory(e.target.value)}
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
                        id="inputThumbnail" 
                        onChange={e => setThumbnail(e.target.files[0])}
                        />
                    <label className="custom-file-label" htmlFor="inputThumbnail">Choose file</label>
                </div>
            </div>
            <div className="form-group">
                <label htmlFor="inputSize">Size</label>
                <select className="custom-select mr-sm-2" 
                        id="inputSize"
                        onChange={e => setSize(e.target.value)}
                        value={size}
                        >
                    <option value="1">Small</option>
                    <option value="2">Medium</option>
                    <option value="3">Large</option>
                </select>
            </div>
            <div className="form-group">
                <label htmlFor="inputStatus">Status</label>
                <select className="custom-select mr-sm-2" 
                        id="inputStatus"
                        onChange={e => setStatus(e.target.value)}
                        value={status}
                        >
                    <option value="1">Normal</option>
                    <option value="2">Important</option>
                    <option value="3">To Read</option>
                </select>
            </div>
           
            <button type="submit" className="btn btn-primary">Submit</button>
        </form>
    );
}

export default Store;