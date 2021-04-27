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

    @PostMapping("/api/messages")
    public Message createMessage(@RequestBody Message message) {
        return messageRepository.save(message);
    }

    @PostMapping("/api/users/{uid}/messages")
    public Message createMessageForUser(
            @PathVariable("uid") Integer uid,
            @RequestBody Message message) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        message.setUserId(uid);
        message.setCreated(timestamp.toString());
        return messageRepository.save(message);
    }

    @PostMapping("/api/conversations/{cid}/messages")
    public Message createMessageForConversation(
            @PathVariable("cid") Integer cid,
            @RequestBody Message message) {
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
        message.setConversationId(cid);
        message.setCreated(timestamp.toString());
        return messageRepository.save(message);
    }

    @GetMapping("/api/conversations/{cid}/messages")
    public List<Message> findMessagesForConversation(
            @PathVariable("cid") Integer conversationId) {
        return messageRepository.findMessagesForConversation(conversationId);
    }

    @GetMapping("/api/users/{uid}/messages")
    public List<Message> findMessagesForUser(
            @PathVariable("uid") Integer uid) {
        return messageRepository.findMessagesForUser(uid);
    }

    @GetMapping("/api/messages")
    public List<Message> findAllMessages() {
        return (List<Message>) messageRepository.findAll();
    }

    @GetMapping("/api/messages/{messageId}")
    public Message findMessageById(
            @PathVariable("messageId") Integer id) {
        return messageRepository.findById(id).get();
    }

    @PutMapping("/api/messages/{messageId}")
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

    @DeleteMapping("/api/messages/{messageId}")
    public void deleteMessage(
            @PathVariable("messageId") Integer id) {
        messageRepository.deleteById(id);
    }
}