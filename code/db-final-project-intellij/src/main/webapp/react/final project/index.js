import UserList from "./users/user-list";
import UserFormEditor from "./users/user-form-editor";
import ConversationList from "./conversation/conversation-list";
import ConversationEditorForm from "./conversation/conversation-editor-form";
import MessageList from "./message/message-list";
import MessageEditorForm from "./message/message-editor-form";
const {HashRouter, Route} = window.ReactRouterDOM; 
const App = () => {
    return (
        <div className="container-fluid">
            <HashRouter>
                <Route path={["/users", "/"]} exact={true}>
                    <UserList/>
                </Route>
                <Route path="/users/:id" exact={true}>
                    <UserFormEditor/>
                </Route>
                <Route path={["/conversation", "/"]} exact={true}>
                    <ConversationList/>
                </Route>
                <Route path="/conversation/:id" exact={true}>
                    <ConversationEditorForm/>
                </Route>
                <Route path={["/users/:userId/message"]} exact={true}>
                    <MessageList/>
                </Route>
                <Route path="/users/:userId/message/:messageId" exact={true}>
                    <MessageEditorForm/>
                </Route>
            </HashRouter>
        </div>
    );
}

export default App;
