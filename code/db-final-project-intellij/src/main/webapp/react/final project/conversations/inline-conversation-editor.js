const {useState, useEffect } = React;
const {Link} = window.ReactRouterDOM;

const InlineConversationEditor = ({conversation, deleteConversation, updateConversation}) => {
    const [conversationCopy, setConversationCopy] = useState(conversation)
    const[userCopy] = useState({})
    const [editing, setEditing] = useState(false)
    return(
        <div>
            {
                editing &&
                <div className="row">
                    <div className="col">
                        <input
                            className="form-control"
                            value={conversationCopy.name}
                            onChange={(e)=>setConversationCopy(conversationCopy => ({...conversationCopy, name: e.target.value}))}/>
                    </div>
                    <div className="col">
                        <input
                            className="form-control"
                            value={conversationCopy.isGroupChat}
                            onChange={(e)=>setConversationCopy(conversationCopy => ({...conversationCopy, isGroupChat: e.target.value}))}/>
                    </div>
                    {/*<div className="col">*/}
                    {/*    <input*/}
                    {/*        className="form-control"*/}
                    {/*        value={conversationCopy.chat_photo}*/}
                    {/*        onChange={(e)=>setConversationCopy(conversationCopy => ({...conversationCopy, chat_photo: e.target.value}))}/>*/}
                    {/*</div>*/}
                    <div className="col-1">
                        <Link to={`/conversations/${conversationCopy.id}/messages`}>
                            Messages
                        </Link>
                    </div>
                    <div className="col-2">
                        <i className="fas fa-2x fa-check float-right margin-left-10px"
                           onClick={() => {
                               setEditing(false)
                               updateConversation(conversationCopy.id, conversationCopy)
                           }}></i>
                        {/*<i className="fas fa-2x fa-undo float-right margin-left-10px"*/}
                        {/*   onClick={() => setEditing(false)}></i>*/}
                        <i className="fas fa-2x fa-trash float-right margin-left-10px"
                           onClick={() => deleteConversation(conversation.id)}></i>
                    </div>
                </div>
            }
            {
                !editing &&
                <div className="row">
                    <div className="col">
                        <Link to={`/conversations/${conversationCopy.id}`}>
                            {conversationCopy.name}
                        </Link>
                    </div>
                    <div className="col">
                        <Link to={`/conversations/${conversationCopy.id}`}>
                            {conversationCopy.isGroupChat.toString()}
                        </Link>
                    </div>
                    {/*<div className="col">*/}
                    {/*    <Link to={`/conversations/${conversationCopy.id}`}>*/}
                    {/*        {conversationCopy.chat_photo}*/}
                    {/*    </Link>*/}
                    {/*</div>*/}
                    <div className="col-1">
                        <Link to={`/conversations/${conversationCopy.id}/messages`}>
                            Messages
                        </Link>
                    </div>
                    <div className="col-2">
                        <i className="fas fa-cog fa-2x float-right"
                           onClick={() => setEditing(true)}></i>
                    </div>
                </div>
            }
        </div>
    )
}

export default InlineConversationEditor;