package com.example.springtemplate.repositories;

import com.example.springtemplate.models.Conversation;
import com.example.springtemplate.models.Message;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface MessageRepository
        extends CrudRepository<Message, Integer> {
    @Query(value = "SELECT * FROM message WHERE user_id=:uid", nativeQuery = true)
    public List<Message> findMessagesForUser(@Param("uid") Integer uid);

    @Query(value = "SELECT * FROM message WHERE conversation_id=:cid", nativeQuery = true)
    public List<Message> findMessagesForConversation(@Param("cid") Integer cid);
}
