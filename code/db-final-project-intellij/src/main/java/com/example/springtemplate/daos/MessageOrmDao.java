package com.example.springtemplate.daos;

import com.example.springtemplate.models.Conversation;
import com.example.springtemplate.models.User;
import com.example.springtemplate.models.Message;
import com.example.springtemplate.models.Format;
import com.example.springtemplate.repositories.ConversationRepository;
import com.example.springtemplate.repositories.UserRepository;
import com.example.springtemplate.repositories.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.persistence.criteria.CriteriaBuilder;
import java.sql.Time;
import java.util.List;
import java.sql.Timestamp;
import java.util.Date;

@RestController
@CrossOrigin(origins = "*")
public class MessageOrmDao {
    @Autowired
    MessageRepository messageRepository;

    @Autowired
    ConversationRepository conversationRepository;

    @Autowired
    UserRepository userRepository;

    @PostMapping("/api/message")
    public Message createMessage(@RequestBody Message message) {
        return messageRepository.save(message);
    }

    @PostMapping("/api/users/{uid}/message")
    public Message createMessageForUser(
            @PathVariable("uid") Integer uid,
            @RequestBody Message message) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        message.setUserId(uid);
        message.setCreated(timestamp.toString());
        return messageRepository.save(message);
    }

    @PostMapping("/api/conversation/{conversationId}/{userId}/message")
    public Message createMessageForConversationAndUser(
            @PathVariable("conversationId") Integer cid,
            @PathVariable("userId") Integer uid,
            @RequestBody Message message) {
        message.setConversationId(cid);
        message.setUserId(uid);
        return messageRepository.save(message);
    }

    @GetMapping("/api/conversation/{cid}/message")
    public List<Message> findMessagesForConversation(
            @PathVariable("cid") Integer conversationId) {
        return messageRepository.findMessagesForConversation(conversationId);
    }

    @GetMapping("/api/users/{uid}/message")
    public List<Message> findMessagesForUser(
            @PathVariable("uid") Integer uid) {
        return messageRepository.findMessagesForUser(uid);
    }

    @GetMapping("/api/message")
    public List<Message> findAllMessages() {
        return (List<Message>) messageRepository.findAll();
    }

    @GetMapping("/api/message/{messageId}")
    public Message findMessageById(
            @PathVariable("messageId") Integer id) {
        return messageRepository.findById(id).get();
    }

    @PutMapping("/api/message/{messageId}")
    public Message updateMessage(
            @PathVariable("messageId") Integer id,
            @RequestBody() Message newMessage) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        Message message = this.findMessageById(id);
        message.setFormat(newMessage.getFormat());
        message.setBody(newMessage.getBody());
        message.setCreated(timestamp.toString());
        message.setUserId(newMessage.getUserId());
        message.setConversationId(newMessage.getConversationId());
        return messageRepository.save(message);
    }

    @DeleteMapping("/api/message/{messageId}")
    public void deleteMessage(
            @PathVariable("messageId") Integer id) {
        messageRepository.deleteById(id);
    }
}