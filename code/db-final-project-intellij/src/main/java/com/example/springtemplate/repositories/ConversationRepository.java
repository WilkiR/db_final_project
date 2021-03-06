package com.example.springtemplate.repositories;

import com.example.springtemplate.models.Conversation;
import com.example.springtemplate.models.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ConversationRepository
        extends CrudRepository<Conversation, Integer> {
}
