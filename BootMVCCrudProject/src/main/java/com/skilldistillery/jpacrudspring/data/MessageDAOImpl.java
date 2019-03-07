package com.skilldistillery.jpacrudspring.data;

import java.util.List;

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
	public Message addMessage(Message message) {

		if (message != null) {
			// start the transaction
			// em.getTransaction().begin();
			// write the customer to the database
			em.persist(message);
			// update the "local" Customer object
			em.flush();
			// commit the changes (actually perform the operation)
			//em.getTransaction().commit();

		}

		return message;
	}

	@Override
	public List<Message> getAllMessages() {
		
		String query = "SELECT m FROM Message m";

		return em.createQuery(query, Message.class).getResultList();
	}

	@Override
	public Message getMessage(int id) {
		
		return em.find(Message.class, id);
	}

	@Override
	public void deleteMessage(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public Message updateMessage(Message message) {
		// TODO Auto-generated method stub
		return null;
	}

}
