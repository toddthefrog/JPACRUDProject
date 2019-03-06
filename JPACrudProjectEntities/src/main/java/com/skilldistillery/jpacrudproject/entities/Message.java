package com.skilldistillery.jpacrudproject.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Message {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "location_key")
	private String locationKey;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "message_title")
	private String messageTitle;

	@Column(name = "message_body")
	private String messageBody;

	@Column(name = "create_date")
	private String creationDate;

	@Column(name = "last_edited")
	private String lastEdited;

	@Column(name = "child_of")
	private String childOf;

	public Message() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLocationKey() {
		return locationKey;
	}

	public void setLocationKey(String locationKey) {
		this.locationKey = locationKey;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMessageTitle() {
		return messageTitle;
	}

	public void setMessageTitle(String messageTitle) {
		this.messageTitle = messageTitle;
	}

	public String getMessageBody() {
		return messageBody;
	}

	public void setMessageBody(String messageBody) {
		this.messageBody = messageBody;
	}

	public String getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	public String getLastEdited() {
		return lastEdited;
	}

	public void setLastEdited(String lastEdited) {
		this.lastEdited = lastEdited;
	}

	public String getChildOf() {
		return childOf;
	}

	public void setChildOf(String childOf) {
		this.childOf = childOf;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", locationKey=" + locationKey + ", userName=" + userName + ", messageTitle="
				+ messageTitle + ", messageBody=" + messageBody + ", creationDate=" + creationDate + ", lastEdited="
				+ lastEdited + ", childOf=" + childOf + "]";
	}

}
