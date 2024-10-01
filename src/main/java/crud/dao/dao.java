package crud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import crud.dto.Student;

@Component
public class dao {
	@Autowired
	EntityManager manager;

	public void adding(Student student) {
		manager.getTransaction().begin();
		manager.persist(student);
		manager.getTransaction().commit();
	}

	@SuppressWarnings("unchecked")
	public List<Student> fetchStudent(Student student) {
		return (List<Student>) manager.createQuery("select x from Student x").getResultList();

	}

	public void deleteStudent(int id) {
		manager.getTransaction().begin();
		manager.remove(find(id));
		manager.getTransaction().commit();

	}

	public Student find(int id) {
		
		return  manager.find(Student.class, id);
	}

	public void updateStudent(Student student) {
		manager.getTransaction().begin();
		manager.merge(student);
		manager.getTransaction().commit();
		
	}

}
