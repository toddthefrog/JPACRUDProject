package com.skilldistillery.jpacrudspring.data;

import java.util.List;

import com.skilldistillery.jpacrudproject.entities.Message;

public interface MessageDAO {
	
	public Message addMessage(Message message);
	public List<Message> getAllMessages();
	public Message getMessage(int id);
	public void deleteMessage(int id);
	public void undeleteMessage(int id);
	public Message updateMessage(Message message, int id);
	

}
