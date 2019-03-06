package com.skilldistillery.jpacrudspring.data;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrudproject.entities.Message;

@Transactional
@Service
public class MessageDAOImpl implements MessageDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Message create(Message message) {

		if (message != null) {
			// start the transaction
			em.getTransaction().begin();
			// write the customer to the database
			em.persist(message);
			// update the "local" Customer object
			em.flush();
			// commit the changes (actually perform the operation)
			em.getTransaction().commit();

		}

		return message;
	}

	@Override
	public Message createLocationKey(String locationKeyA, String locationKeyB, String locationKeyC) {

		String s = null;

		Message message = new Message();

		String messageBody = "Hello!  This is a test message.";

		if (locationKeyA != null) {
			if (locationKeyB != null) {
				if (locationKeyC != null) {
					s = locationKeyA + locationKeyB + locationKeyC;

				}

			}
		}

		String queryString = "SELECT message FROM Message m WHERE message.locationKey = :locationKey AND message.id is null";

		Message result = em.createQuery(queryString, Message.class).setParameter("locationKey", s).getSingleResult();

		if (result == null) {
			message.setLocationKey(s);
			message.setMessageBody(messageBody);
			Date date = new Date();
			message.setCreationDate(date.toString());
			create(message);
		}

		return result;

	}

}
