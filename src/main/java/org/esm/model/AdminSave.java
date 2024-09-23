package org.esm.model;
import java.sql.Date;

public class AdminSave {
	private int adminid;
	private String firstname;
	private	 String lastname;
	private long con_num;
	private String email;
	private Date dateofbirth;
	private int EmpDepartmentId;
	private String password;
	private String username;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	private String checkPassword;
	
	public int getEmpDepartmentId() {
		return EmpDepartmentId;
	}
	public void setEmpDepartmentId(int empDepartmentId) {
		EmpDepartmentId = empDepartmentId;
	}
	public int getAdminid() {
		return adminid;
	}
	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getCon_num() {
		return con_num;
	}
	public void setCon_num(long con_num) {
		this.con_num = con_num;
	}
	public String getLastname() {
		return lastname;
	}
	public Date getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}