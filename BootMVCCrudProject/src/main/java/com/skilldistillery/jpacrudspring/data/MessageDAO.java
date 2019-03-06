package com.skilldistillery.jpacrudspring.data;

import com.skilldistillery.jpacrudproject.entities.Message;

public interface MessageDAO {
	
	public Message create(Message message);
	public Message createLocationKey(String locationKeyA, String locationKeyB, String locationKeyC);

}
