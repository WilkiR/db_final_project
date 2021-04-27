import messageService from "./message-service"

const {useState, useEffect} = React;
const {useParams, useHistory, Link} = window.ReactRouterDOM;

const ConversationMessageEditorForm = () => {
    const [message, setMessage] = useState({})
    const {conversationId, messageId} = useParams()
    useEffect(() => {
        if(conversationId !== 'new') {
            findMessageById(messageId)
        }
    }, []);
    const {id} = useParams()
    const history = useHistory()
    const createMessageForConversation = (conversationId, message) => {
        messageService.createMessageForConversation(conversationId, message)
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
            <label>User Id</label>
            <input className="form-control" onChange={(e) => setMessage(message => ({...message, userId: e.target.value}))} value={message.userId}/><br/>
            {/*<label>Conversation Id</label>*/}
            {/*<input className="form-control" onChange={(e) => setMessage(message => ({...message, conversationId: e.target.value}))} value={message.conversationId}/><br/>*/}
            <br/>
            <button className="btn btn-warning" onClick={() => {history.goBack()}}>Cancel</button>
            <button className="btn btn-danger" onClick={() => deleteMessage(message.id)}>Delete</button>           <button className="btn btn-primary" onClick={() => updateMessage(message.id, message)}>Save</button>
            <button className="btn btn-success" onClick={() => createMessageForConversation(conversationId, message)}>Create</button>
        </div>
    )
}

export default ConversationMessageEditorForm