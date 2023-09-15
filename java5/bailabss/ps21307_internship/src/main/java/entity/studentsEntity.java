package entity;

import java.io.Serializable;
import java.util.List;



import com.fasterxml.jackson.annotation.JsonIgnore;


import lombok.Data;

@SuppressWarnings("serial")
@Data
@Entity
@Table(name = "students")
public class studentsEntity implements Serializable {
	@Id
	private String id;
	private String name;

	@JsonIgnore
	@OneToMany(mappedBy = "role")
	List<Authority> authorities;
}
