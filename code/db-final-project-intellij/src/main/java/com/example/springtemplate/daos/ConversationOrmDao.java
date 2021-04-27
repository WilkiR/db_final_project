package com.example.springtemplate.daos;

import com.example.springtemplate.models.Conversation;
import com.example.springtemplate.models.User;
import com.example.springtemplate.repositories.ConversationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
public class ConversationOrmDao {
    @Autowired
    ConversationRepository conversationRepository;

    @PostMapping("/api/conversations")
    public Conversation createConversation(@RequestBody Conversation conversation) {
        return conversationRepository.save(conversation);
    }
    
    @GetMapping("/api/conversations")
    public List<Conversation> findAllConversations() {
        return (List<Conversation>) conversationRepository.findAll();
    }
    
    @GetMapping("/api/conversations/{conversationId}")
    public Conversation findConversationById(
            @PathVariable("conversationId") Integer id) {
        return conversationRepository.findById(id).get();
    }

    @PutMapping("/api/conversations/{conversationId}")
    public Conversation updateConversation(
            @PathVariable("conversationId") Integer id,
            @RequestBody() Conversation newConversation) {
        Conversation conversation = this.findConversationById(id);
        conversation.setName(newConversation.getName());
        conversation.setIsGroupChat(newConversation.getIsGroupChat());
        conversation.setChat_photo(newConversation.getChat_photo());
        return conversationRepository.save(conversation);
    }

    @DeleteMapping("/api/conversations/{conversationId}")
    public void deleteConversation(
            @PathVariable("conversationId") Integer id) {
        conversationRepository.deleteById(id);
    }
}