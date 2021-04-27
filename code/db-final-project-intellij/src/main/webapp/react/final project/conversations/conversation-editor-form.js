import conversationService from "./conversation-service"
const {useState, useEffect} = React
const {useParams, useHistory, Link} = window.ReactRouterDOM;

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
            <label>Is this conversation a group chat?</label>
            <input className="form-control" onChange={(e) => setConversation(conversation => ({...conversation, isGroupChat: e.target.value}))} value={conversation.isGroupChat}/><br/>
            <label>Chat Photo</label>
            <input className="form-control" onChange={(e) => setConversation(conversation => ({...conversation, chat_photo: e.target.value}))} value={conversation.chat_photo}/>
            <Link to={`/conversations/${id}/messages`}
                  className="btn btn-primary btn-block"
                  style={{width: "100%"}}>
                Messages for Conversation
            </Link>
            <br/>
            <br/>
            <button className="btn btn-warning" onClick={() => {history.push("/")}}>Cancel</button>
            <button className="btn btn-danger" onClick={() => deleteConversation(conversation.id)}>Delete</button>
            <button className="btn btn-primary" onClick={() => updateConversation(conversation.id, conversation)}>Save</button>
            <button className="btn btn-success" onClick={() => createConversation(conversation)}>Create</button>
        </div>
    )
}

export default ConversationEditorForm