package com.example.demo;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MyRESTController {

	@Autowired
	ContactRepository repository;
	
	@Autowired
	private SessionFactory sessionFactory;

	@GetMapping("/contacts")
	public Iterable<Contact> getContacts() {
		return repository.findAll();
	}
	@GetMapping("/getContacts/{place}")
	public Iterable<Contact> getAllContacts(@PathVariable String place) {
		Session session = this.sessionFactory.getCurrentSession();
		List<Contact>  customerList = session.createQuery("from Contact").list();
		return customerList;
	}

}
