package org.esm.model;
import java.math.BigDecimal;
import java.sql.Date;

public class EmployeeRegister {
	
	//EmpId EmpName  EmpContact  EmpEmail  EmpGender  EmpAddres  EmpDateOfJoining  EmpDateOfLiving  EmpDepartmentId EmpPassword EmpUsername
	private int EmpId;
	private String EmpName;
	private String EmpContact;
	private String EmpEmail;
	private String EmpGender;
    private String EmpAddres;
	private Date EmpDateOfJoining;
	private int EmpDepartmentId;
	private  String EmpPassword;
	private String checkPassword;
	private String EmpDepName;
	private BigDecimal basesalary;
	
	public BigDecimal getBasesalary() {
		return basesalary;
	}
	public void setBasesalary(BigDecimal basesalary) {
		this.basesalary = basesalary;
	}

	public String getCheckPassword() {
		return checkPassword;
	}
	public void setCheckPassword(String checkPassword) {
		this.checkPassword = checkPassword;
	}
	
	public String getEmpName() {
		return EmpName;
	}
	public void setEmpName(String empName) {
		EmpName = empName;
	}
	public String getEmpContact() {
		return EmpContact;
	}
	public void setEmpContact(String empContact) {
		EmpContact = empContact;
	}
	public String getEmpEmail() {
		return EmpEmail;
	}
	public void setEmpEmail(String empEmail) {
		EmpEmail = empEmail;
	}
	public String getEmpGender() {
		return EmpGender;
	}
	public void setEmpGender(String empGender) {
		EmpGender = empGender;
	}
	public String getEmpAddres() {
		return EmpAddres;
	}
	public void setEmpAddres(String empAddres) {
		EmpAddres = empAddres;
	}
	public Date getEmpDateOfJoining() {
		return EmpDateOfJoining;
	}
	public void setEmpDateOfJoining(Date empDateOfJoining) {
		EmpDateOfJoining = empDateOfJoining;
	}
	
	public int getEmpDepartmentId() {
		return EmpDepartmentId;
	}
	public void setEmpDepartmentId(int empDepartmentId) {
		EmpDepartmentId = empDepartmentId;
	}
	public String getEmpPassword() {
		return EmpPassword;
	}
	public void setEmpPassword(String empPassword) {
		EmpPassword = empPassword;
	}

	public int getEmpId() {
		return EmpId;
	}
	public  void setEmpId(int empId) {
		EmpId = empId;
	}
	public String getEmpDepName() {
		return EmpDepName;
	}
	public void setEmpDepName(String empDepName) {
		EmpDepName = empDepName;
	}
	@Override
	public String toString() {
		return "EmployeeRegister EmpId=" + EmpId + ", EmpName=" + EmpName + ", EmpContact=" + EmpContact
				+ ", EmpEmail=" + EmpEmail + ", EmpGender=" + EmpGender + ", EmpAddres=" + EmpAddres
				+ ", EmpDateOfJoining=" + EmpDateOfJoining
				+ ", EmpDepartmentId=" + EmpDepartmentId  + ", EmpPassword="
				+ EmpPassword + ", checkPassword=" + checkPassword + ", EmpDepName=" + EmpDepName + "]";
	}
  
}
