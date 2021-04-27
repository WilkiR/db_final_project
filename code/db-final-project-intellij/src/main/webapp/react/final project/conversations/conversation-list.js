import InlineConversationEditor from "./inline-conversation-editor";
import conversationService from "../conversations/conversation-service";

const { useState, useEffect } = React;
const { Link } = window.ReactRouterDOM;

const ConversationList = () => {
    const [newConversation, setNewConversation] = useState({})
    const [conversations, setConversations] = useState([])
    useEffect(() => {
        findAllConversations()
    }, [])
    const findAllConversations = () =>
    {
        console.log(conversationService)
        conversationService.findAllConversations()
            .then(conversations => setConversations(conversations))
    }
    const createConversation = (conversation) =>
        conversationService.createConversation(conversation)
            .then(conversation => {
                setNewConversation({title:''})
                setConversations(conversations => ([...conversations, conversation]))
            })
    const updateConversation = (id, newConversation) =>
        conversationService.updateConversation(id, newConversation)
            .then(conversation => setConversations(conversations => (conversations.map(conversation => conversation.id === id ? newConversation : conversation))))
    const deleteConversation = (id) =>
        conversationService.deleteConversation(id)
            .then(conversations => setConversations(conversations => conversations.filter(conversation => conversation.id !== id)))
    return(
        <div>
            <h2>Conversation List</h2>

            <Link to="/conversations/new" className="btn btn-primary">
                Add Conversation
            </Link>
            <br/>
            <br/>

            <ul className="list-group">
                {
                    conversations.map(conversation =>
                        <li key={conversation.id} className="list-group-item">
                            <InlineConversationEditor key={conversation._id}
                                              updateConversation={updateConversation}
                                              deleteConversation={deleteConversation}
                                              conversation={conversation}/>
                        </li>)
                }
            </ul>
        </div>
    )
}

export default ConversationList;

// const { useState, useEffect } = React;
// const {Link, useHistory} = window.ReactRouterDOM;
//
// const ConversationList = () => {
//     const [conversations, setConversations] = useState([])
//     useEffect(() => {
//         findAllConversations()
//     }, [])
//     const findAllConversations = () =>
//         conversationService.findAllConversations()
//             .then(conversations => setConversations(conversations))
//     const history = useHistory()
//
//
//     return(
//         <div>
//             <h2>Conversation List</h2>
//             <button className="btn btn-primary" onClick={() => history.push("/conversations/new")}>
//                 Add Conversation
//             </button>
//             <ul className="list-group">
//                 {
//                     conversations.map(conversation =>
//                         <li key={conversation.id}>
//                             <Link to={`/conversations/${conversation.id}`}>
//                                 {conversation.name},
//                                 {conversation.isGroupChat.toString()},
//                                 {conversation.chat_photo}
//                             </Link>
//                         </li>)
//                 }
//             </ul>
//         </div>
//     )
// }
//
// export default ConversationList;