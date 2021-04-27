import conversationService from "./conversation-service"
const {useState, useEffect} = React
const {useParams, useHistory} = window.ReactRouterDOM;

const ConversationEditorForm = () => {
    const {id} = useParams()
    const [conversation, setConversation] = useState({})
    useEffect(() => {
        if(id !== "new") {
            findConversationById(id)
        }
    }, []);
    const createConversation = (conversation) => conversationService.createConversation(conversation) .then(() => history.goBack())
    const findConversationById = (id) => conversationService.findConversationById(id) .then(conversation => setConversation(conversation))
    const history = useHistory()
    const deleteConversation = (id) => conversationService.deleteConversation(id) .then(() => history.goBack())
    const updateConversation = (id, newConversation) => conversationService.updateConversation(id, newConversation) .then(() => history.goBack())

    return (
        <div>
            <h2>Conversation Editor</h2>
            <label>Id</label>
            <input className="form-control" value={conversation.id}/><br/>
            <label>Name</label>
            <input className="form-control" onChange={(e) => setConversation(conversation => ({...conversation, name: e.target.value}))} value={conversation.name}/><br/>
            <label>Notification</label>
            <input className="form-control" onChange={(e) => setConversation(conversation => ({...conversation, notification: e.target.value}))} value={conversation.notification}/><br/>
            <label>Chat Photo</label>
            <input className="form-control" onChange={(e) => setConversation(conversation => ({...conversation, chat_photo: e.target.value}))} value={conversation.chat_photo}/><br/>
            <br/>
            <button className="btn btn-warning" onClick={() => {history.goBack()}}>Cancel</button>
            <button className="btn btn-danger" onClick={() => deleteConversation(conversation.id)}>Delete</button>
            <button className="btn btn-primary" onClick={() => updateConversation(conversation.id, conversation)}>Save</button>
            <button className="btn btn-success" onClick={() => createConversation(conversation)}>Create</button>
        </div>
    )
}

export default ConversationEditorForm