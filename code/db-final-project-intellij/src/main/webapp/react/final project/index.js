import UserList from "./users/user-list";
import UserFormEditor from "./users/user-form-editor";
import ConversationList from "./conversations/conversation-list";
import ConversationEditorForm from "./conversations/conversation-editor-form";
import UserMessageList from "./messages/user-message-list";
import ConversationMessageList from "./messages/conversation-message-list";
import UserMessageEditorForm from "./messages/user-message-editor-form";
import ConversationMessageEditorForm from "./messages/conversation-message-editor-form";
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
                <Route path={["/conversations", "/"]} exact={true}>
                    <ConversationList/>
                </Route>
                <Route path="/conversations/:id" exact={true}>
                    <ConversationEditorForm/>
                </Route>
                <Route path={["/users/:userId/conversations/:conversationId/messages"]} exact={true}>
                    <UserMessageList/>
                </Route>
                <Route path={["/conversations/:conversationId/messages"]} exact={true}>
                    <ConversationMessageList/>
                </Route>
                <Route path="/users/:userId/conversations/:conversationId/messages/:messageId" exact={true}>
                    <UserMessageEditorForm/>
                </Route>
                <Route path="/conversations/:conversationId/messages/:messageId" exact={true}>
                    <ConversationMessageEditorForm/>
                </Route>
            </HashRouter>
        </div>
    );
}

export default App;
