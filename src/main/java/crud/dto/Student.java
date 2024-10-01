package crud.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

import lombok.Data;



@Entity
@Data
@Component
public class Student {
	private String name;
	private long mobile;
	private String gender;
	private int age;
	private String address;
	private String[] skills;
	@Id
	@GeneratedValue
	private int id;
}
