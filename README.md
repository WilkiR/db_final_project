## CS3200: Database Design Final Project
This file contains the the required information pertaining to our deliverables.

#**1. Project Name:** 
Chat App

#**2. Team:** 
4

#**3. Members:** 
Wilkin Rivera & Tajonae Oyelowo

#**4. Project Description** 
This application has the base functionality of a chat app. Our _users_ make _conversations_ with other users, in groups of two or more, to send _messages_ which can contain different _formats_.

#**5. Link to UML Model:** 
[UML Model](db_design_final_project_UML.pdf)

#**6. User Model:** 
Our _user_ is used to describe the user interacting with the application. Besides the required fields from the assignment, we included an integer attribute _phone_number_, representing the user's phone number.

#**7. Domain Objects:** 
The first domain object is a _conversation_ which contains a **name**, a flag to show if the conversation **is_group_chat**, and a **chat photo**, recorded as a link, to represent the groups image. This domain object represents the groups of users that will be able to chat with one other.

The second domain object is the _message_ which contains a _format_, a **body**,. a **created** timestamp. This object is sent by a _user_ to a _conversation_ for the other users of the group to view.
 
#**8. Relationship - User to Domain Object:**
Our _user_ is related to both the _conversation_ and the _message_ objects. A single user can be create many messages. A single user can also be a part of many conversations. 

#**9. Relationship - Domain Object to User**
A conversation can have many messages as well. Therefore a message will be associated to only a single conversation. The same conversation can also have many users in it. Since users can also be apart of many conversations, we run into a many to many relationship in the modeling, which was resolved by reifying the model to include a mapping class _user_to_conversations_. This class will have many entries that relate a single _user_ to a single _conversation_. 

#**10. Portable Enumerations:**
Our portable enumeration, _format_ is used within the _message_ object to describe the type of message being sent by the user to the conversation. The different types of messages that can be sent are **GIF**, **LOCATION**, **VIDEO**, **PHOTO**, and **TEXT**. Anything other than a **TEXT** will include a link to the apropriate format of the thing being sent.

#**11. User Interface Requirements:**
**_User List_** - Displays a list of all users and a link to the messages for a specific user. The list contains the users' **first_name**, **last_name**, **username**, and **phone_number**.
**_Conversation List_** - Displays a list of all the conversations. The list contains the groups' **name**, **is_group_chat**, and **chat_photo**.
**_Conversation Editor_** - Displays a particular conversation for editing or allows creating a new conversation, and navigate to messages for that conversations.
**_Message List_** - Displays a list the messages a user has sent and the messages for a given conversation.
**_Message Editor_** - Displays a particular message for editing or allows creating a new message, and navigate to the user or conversation using a return arrow. When creating/updating a message, the **created** field is updated to the system's current time.

If a _message_ is related to a _conversation_, then the _user_ should be able to navigate from a particular _message_ record to the _converstaion_ related to that _message_. If a user is related to a _conversation_, then the _user_ should be able to navigate from a particular _user_ record to the _converstaion_ related to that _user_.

##Repo Contents:
Please read below to understand the contents of the repo and for the steps to run our system

**database** - The dump files which should be imported into MySQL to obtain the schema with the included data. The create schema option in MySQL exporting would not work as intended, therefore you will need to have an empty schema,  with the name _chat_app_, to properly import the tables and the generated data. 
**code** - This folder contains all of our code for running the interface with our database. In the first layer is a zip and a folder containin the unzipped contents. The folder named _db-final-project-intellij_ is the project folder you should open when using Intellij to open the code. From there navigate through the folders: 

_**db-final-project-intellij** > **src** > **main** > **java** > **com** > **example** > **springtemplate**_

Run the **DemoApplication** to  connect to the server. Then starting from the main directory navitgate to:

_**db-final-project-intellij** > **src** > **main** > **webapp**_

Run **index.html** in Chrome to test our interface.

We assume that the application properties should be set to the same ones used in class, but if those need to be changed to work with your local database that file can be found under the following path:

_**db-final-project-intellij** > **src** > **main** > **resources**_
