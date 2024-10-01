package crud.controller;

import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import crud.dao.dao;
import crud.dto.Student;

@Controller
public class ControllerClass {

	@Autowired
	private Student student;
	@Autowired
	private dao dao;

	@GetMapping("/")
	public String home() {
		return "home.jsp";
	}

	@GetMapping("/add")
	public String AddStudent() {

		return "addstudent.jsp";
	}

	@PostMapping("/add-student")
	public String addStudent(@ModelAttribute Student student, ModelMap map) {
		dao.adding(student);
		map.put("success", "Record Added Success");
		return "addstudent.jsp";
	}

	@RequestMapping("/fetch-student")
	public String fetchStudent(ModelMap map) {

		map.put("success", dao.fetchStudent(student));
		return "fetch.jsp";

	}

	@GetMapping("/delete")
	public String deleteStudent(@RequestParam int id, ModelMap map) {
		dao.deleteStudent(id);
		map.put("result", "Record Deleted Success");
		return "fetch-student";
	}

	@GetMapping("/edit")
	public String editStudent(@RequestParam int id, ModelMap map) {
		map.put("student", dao.find(id));
		return "edit.jsp";
	}

	@PostMapping("/update-student")
	public String updateStudent(Student student, ModelMap map) {
		dao.updateStudent(student);
		map.put("result", " Record Updated Success");
		return "fetch-student";
	}
}
