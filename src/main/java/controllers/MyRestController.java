package controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import Entity.Student;
import services.StudentsService;

@Controller
public class MyRestController {
	@Autowired
	private StudentsService studentsService;
	@RequestMapping
	(value="/home2", method = RequestMethod.GET)
	public @ResponseBody List <Student> getAllStudents() {
		List <Student> st= studentsService.getAllStudents();
	    return st;
	}
    @RequestMapping(value= {"/admin/{pib}/{course}"}, method = RequestMethod.POST)
    public @ResponseBody Student addStudent(@PathVariable String pib,@PathVariable int course) {
    	Student st=new Student();
    	st.setPib(pib);
    	st.setCourse(course);
    	studentsService.addStudent(st);
        return st;
    }
    }

