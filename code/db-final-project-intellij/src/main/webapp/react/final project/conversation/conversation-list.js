import conversationService, {findAllConversations} from "./conversation-service"
const { useState, useEffect } = React;
const {Link, useHistory} = window.ReactRouterDOM;

const ConversationList = () => {
    const [conversations, setConversations] = useState([])
    useEffect(() => {
        findAllConversations()
    }, [])
    const findAllConversations = () =>
        conversationService.findAllConversations()
            .then(conversations => setConversations(conversations))
    const history = useHistory()


    return(
        <div>
            <h2>Conversation List</h2>
            <button className="btn btn-primary" onClick={() => history.push("/conversation/new")}>
                Add Conversation
            </button>
            <ul className="list-group">
                {
                    conversations.map(conversation =>
                        <li key={conversation.id}>
                            <Link to={`/conversation/${conversation.id}`}>
                                {conversation.name},
                                {conversation.notification.toString()},
                                {conversation.chat_photo}
                            </Link>
                        </li>)
                }
            </ul>
        </div>
    )
}

export default ConversationList;