package com.skilldistillery.jpacrudspring.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrudproject.entities.Message;
import com.skilldistillery.jpacrudspring.data.MessageDAO;

@Controller
public class MessageController {
	@Autowired
	private MessageDAO dao;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public ModelAndView index() {
		// call getAllMessages();
		ModelAndView mv = new ModelAndView();
		List<Message> allMessages = dao.getAllMessages();
		mv.addObject("resultList", allMessages);
		mv.setViewName("WEB-INF/message/show.jsp");
		return mv;
	}

	@RequestMapping(path = "add.do", method = RequestMethod.GET)
	public ModelAndView displayMessageForm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/message/add.jsp");
		return mv;
	}
	
	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public ModelAndView createMessage(Message message) {
		ModelAndView mv = new ModelAndView();
		dao.addMessage(message);
		mv.setViewName("redirect:/");
		return mv;
	}
	
	@RequestMapping(path = "getMessage.do", method = RequestMethod.GET)
	public ModelAndView getMessage(@RequestParam("fid")int id) {
		ModelAndView mv = new ModelAndView();
		Message message = dao.getMessage(id);
		mv.addObject("message", message);
		mv.setViewName("WEB-INF/message/singleMessage.jsp");
		return mv;
	}

}
