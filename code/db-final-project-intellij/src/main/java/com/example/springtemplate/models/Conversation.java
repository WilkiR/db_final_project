package com.example.springtemplate.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="conversations")
public class Conversation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    @Column(columnDefinition="tinyint(1) default 1")
    private Boolean isGroupChat;
    private String chat_photo;
    
//    @OneToMany(mappedBy = "conversation")
//    @JsonIgnore
//    private List<Message> messages;

//    public List<Message> getMessages() {
//        return messages;
//    }
//
//    public void setMessages(List<Message> messages) {
//        this.messages = messages;
//    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getIsGroupChat() {
        return isGroupChat;
    }

    public void setIsGroupChat(Boolean isGroupChat) {
        this.isGroupChat = isGroupChat;
    }

    public String getChat_photo() {
        return chat_photo;
    }

    public void setChat_photo(String chat_photo) {
        this.chat_photo = chat_photo;
    }

//    public Conversation(String name, Boolean notification, String chat_photo) {
//        this.name = name;
//        this.notification = notification;
//        this.chat_photo = chat_photo;
//    }
//
//    public Conversation() {}

}
