package com.skilldistillery.jpacrudspring.controllers;

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
	public String index() {
		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getLocation.do", method = RequestMethod.GET)
	public ModelAndView getLocation(
			@RequestParam("locationKeyA") String locationKeyA,
			@RequestParam("locationKeyB") String locationKeyB, 
			@RequestParam("locationKeyC") String locationKeyC
			) {
		
		ModelAndView mv = new ModelAndView();
		
		Message message = dao.createLocationKey(locationKeyA, locationKeyB, locationKeyC);
		System.out.println(message.toString());
		
		mv.setViewName("WEB-INF/message/show.jsp");
		
		
		return mv;
	}

}
