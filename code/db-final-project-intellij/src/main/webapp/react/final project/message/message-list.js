import messageService from "./message-service"

const { useState, useEffect } = React;
const { useParams, Link } = window.ReactRouterDOM;

const MessageList = () => {
    const [messages, setMessages] = useState([])
    const { userId } = useParams();
    useEffect(() => {
        findMessagesForUser(userId)
    }, [])
    const findMessagesForUser = (userId) => {
        messageService.findMessagesForUser(userId)
            .then(messages => setMessages(messages))
    }
    return(
        <div>
            <h2>
                <Link to={`/users/${userId}`}>
                    <i className="fas fa-arrow-left"></i>
                </Link> Messages
            </h2>
            <Link to={`/users/${userId}/message/new`}
                  className="btn btn-primary">
                Add
            </Link>
            <br/>
            <br/>
            <ul className="list-group">
                {
                    messages.map(message =>
                        <li key={message.id} className="list-group-item">
                            <Link to={`/users/${userId}/message/${message.id}`}>
                                {message.format},
                                {message.body},
                                {message.created}
                            </Link>
                        </li>)
                }
            </ul>
        </div>
    )
}

export default MessageList;
// import messageService from "./message-service"
// const { useState, useEffect } = React;
// const {Link, useParams, useHistory} = window.ReactRouterDOM;
//
// const MessageList = () => {
//     const [messages, setMessages] = useState([])
//     useEffect(() => {
//         findAllMessages()
//     }, [])
//     const findAllMessages = () =>
//         messageService.findAllMessages()
//             .then(messages => setMessages(messages))
//     const history = useHistory()
//
//
//     return(
//         <div>
//             <h2>Message List</h2>
//             <button className="btn btn-primary" onClick={() => history.push("/message/new")}>
//                 Add Message
//             </button>
//             <ul className="list-group">
//                 {
//                     messages.map(message =>
//                         <li key={message.id}>
//                             <Link to={`/message/${message.id}`}>
//                                 {message.format},
//                                 {message.body},
//                                 {message.created},
//                                 {message.body},
//                                 {message.created},
//                             </Link>
//                         </li>)
//                 }
//             </ul>
//         </div>
//     )
// }
//
// export default MessageList;
