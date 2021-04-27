const CONVERSATION_URL = "http://localhost:8080/api/conversation"

export const createConversation = (conversation) =>
    fetch(CONVERSATION_URL, {
        method: 'POST',
        body: JSON.stringify(conversation),
        headers: {'content-type': 'application/json'}
    })
    .then(response => response.json())

export const findAllConversations = () =>
    fetch(CONVERSATION_URL)
        .then(response => response.json())

export const findConversationById = (id) =>
    fetch(`${CONVERSATION_URL}/${id}`)
        .then(response => response.json())

export const updateConversation = (id, conversation) =>
    fetch(`${CONVERSATION_URL}/${id}`, {
        method: 'PUT',
        body: JSON.stringify(conversation),
        headers: {'content-type': 'application/json'}
    })
    .then(response => response.json())

const deleteConversation = (id) =>
    fetch(`${CONVERSATION_URL}/${id}`, {
        method: "DELETE"
    })

export default {
    createConversation,
    findAllConversations,
    findConversationById,
    updateConversation,
    deleteConversation
}