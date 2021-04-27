import messageService from "./message-service"

const {useState, useEffect} = React;
const {useParams, useHistory, Link} = window.ReactRouterDOM;

const UserMessageEditorForm = () => {
    const [message, setMessage] = useState({})
    const {userId, messageId} = useParams()
    useEffect(() => {
        if(userId !== 'new') {
            findMessageById(messageId)
        }
    }, []);
    const {id} = useParams()
    const history = useHistory()
    const createMessageForUser = (userId, message) => {
        messageService.createMessageForUser(userId, message)
            .then(message => history.goBack())
    }
    const findMessageById = (id) => {
        messageService.findMessageById(id)
            .then(message => setMessage(message))
    }
    const updateMessage = (id, newMessage) => {
        messageService.updateMessage(id, newMessage)
            .then(() => history.goBack())
    }
    const deleteMessage = (id) => messageService.deleteMessage(id) .then(() => history.goBack())

    return (
        <div>
            <h2>Message Editor</h2>
            <label>Id</label>
            <input className="form-control" value={message.id}/><br/>
            <label>Format</label>
            <select
                className="form-control"  onChange={(e) => setMessage(message => ({...message, format: e.target.value}))} value={message.format || ""}>
                <option value="">Choose Format</option>
                <option value="GIF">Gif</option>
                <option value="LOCATION">Location</option>
                <option value="PHOTO">Photo</option>
                <option value="TEXT">Text</option>
                <option value="VIDEO">Video</option>
            </select>
            <br/>
            <label>Body</label>
            <input className="form-control" onChange={(e) => setMessage(message => ({...message, body: e.target.value}))} value={message.body}/><br/>
            <label>Created</label>
            <input className="form-control" onChange={(e) => setMessage(message => ({...message, created: e.target.value}))} value={message.created}/><br/>
            {/*<label>User Id</label>*/}
            {/*<input className="form-control" onChange={(e) => setMessage(message => ({...message, userId: e.target.value}))} value={message.userId}/><br/>*/}
            <label>Conversation Id</label>
            <input className="form-control" onChange={(e) => setMessage(message => ({...message, conversationId: e.target.value}))} value={message.conversationId}/><br/>
            <br/>
            <button className="btn btn-warning" onClick={() => {history.goBack()}}>Cancel</button>
            <button className="btn btn-danger" onClick={() => deleteMessage(message.id)}>Delete</button>           <button className="btn btn-primary" onClick={() => updateMessage(message.id, message)}>Save</button>
            <button className="btn btn-success" onClick={() => createMessageForUser(userId, message)}>Create</button>
        </div>
    )
}

export default UserMessageEditorForm
