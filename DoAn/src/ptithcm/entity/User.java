package ptithcm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue
	private Integer id;
	private String email;
	private String password;
	private String name;
	private Integer active;
	private Integer phanquyen;
	
	public User(Integer id, String email, String password, String name, Integer active, Integer phanquyen) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.name = name;
		this.active = active;
		this.phanquyen = phanquyen;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Integer getPhanquyen() {
		return phanquyen;
	}

	public void setPhanquyen(Integer phanquyen) {
		this.phanquyen = phanquyen;
	}
	

}
