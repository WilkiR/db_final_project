const CONVERSATION_URL = "http://localhost:8080/api/conversation"
const MESSAGE_URL = "http://localhost:8080/api/message"
const USERS_URL = "http://localhost:8080/api/users"

// TODO: retrieve all users from the server
export const findAllMessages = () => fetch(MESSAGE_URL) .then(response => response.json())
{}

export const createMessageForUser = (userId, blog) => {
    return fetch(`${USERS_URL}/${userId}/message`, {
        method: 'POST',
        body: JSON.stringify(blog),
        headers: {'content-type': 'application/json'}
    })
        .then(response => response.json())
}
// export const createMessageForConversationAndUser = (conversationId, userId, message) =>
//     fetch(`${CONVERSATION_URL}/${conversationId}/${userId}/message`, {
//         method: 'POST',
//         body: JSON.stringify(message),
//         headers: {'content-type': 'application/json'}
//     })
//     .then(response => response.json())

export const findMessagesForConversation = (conversationId) =>
    fetch(`${CONVERSATION_URL}/${conversationId}/message`)
        .then(response => response.json())

export const findMessagesForUser = (userId) => {
    return fetch(`${USERS_URL}/${userId}/message`)
        .then(response => response.json())
}
export const findMessageById = (id) =>
    fetch(`${MESSAGE_URL}/${id}`)
        .then(response => response.json())

export const updateMessage = (id, message) =>
    fetch(`${MESSAGE_URL}/${id}`, {
        method: 'PUT',
        body: JSON.stringify(message),
        headers: {'content-type': 'application/json'}
    })
    .then(response => response.json())

const deleteMessage = (id) =>
    fetch(`${MESSAGE_URL}/${id}`, {
        method: "DELETE"
    })

export default {
    findAllMessages,
    createMessageForUser,
    // createMessageForConversationAndUser,
    findMessagesForConversation,
    findMessagesForUser,
    findMessageById,
    updateMessage,
    deleteMessage
}