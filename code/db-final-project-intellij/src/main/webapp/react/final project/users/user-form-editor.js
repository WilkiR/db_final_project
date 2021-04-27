import userService from "./user-service"
const {useState, useEffect} = React;
const {useParams, useHistory, Link} = window.ReactRouterDOM;
const UserFormEditor = () => {
    const {id} = useParams()
    const [user, setUser] = useState({})
        useEffect(() => {
            if(id !== "new") {
                findUserById(id)
            }
        }, []);
    const createUser = (user) => userService.createUser(user) .then(() => history.goBack())
    const findUserById = (id) => userService.findUserById(id) .then(user => setUser(user))
    const history = useHistory()
    const deleteUser = (id) => userService.deleteUser(id) .then(() => history.goBack())
    const updateUser = (id, newUser) => userService.updateUser(id, newUser) .then(() => history.goBack())

    return (
        <div>
            <h2>User Editor</h2>
            <label>Id</label>
            <input className="form-control" value={user.id}/><br/>
            <label>First Name</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, firstName: e.target.value}))} value={user.firstName}/><br/>
            <label>Last Name</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, lastName: e.target.value}))} value={user.lastName}/><br/>
            <label>Username</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, username: e.target.value}))} value={user.username}/><br/>
            <label>Password</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, password: e.target.value}))} value={user.password}/><br/>
            <label>Email</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, email: e.target.value}))} value={user.email}/><br/>
            <label>Phone Number</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, phoneNumber: e.target.value}))} value={user.phoneNumber}/><br/>
            <label>Date of Birth</label>
            <input className="form-control" onChange={(e) => setUser(user => ({...user, dateOfBirth: e.target.value}))} value={user.dateOfBirth}/>


            <Link to={`/users/${id}/message`}
                  className="btn btn-primary btn-block"
                  style={{width: "100%"}}>
                Messages
            </Link>

            <br/>
            <br/>
            <button className="btn btn-warning" onClick={() => {history.push("/")}}>Cancel</button>
            <button className="btn btn-danger" onClick={() => deleteUser(user.id)}>Delete</button>
            <button className="btn btn-primary" onClick={() => updateUser(user.id, user)}>Save</button>
            <button className="btn btn-success" onClick={() => createUser(user)}>Create</button>
        </div>
    )
}

export default UserFormEditor