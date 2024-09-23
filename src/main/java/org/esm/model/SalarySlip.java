package org.esm.model;

public class SalarySlip {
	
    private int empId;
    private String empName;
    private String empContact;
    private String empEmail;
    private String empGender;
    private int totalPresentDays;
    private int totalAbsentDays;
    private double totalHoursWorked;
    private double monthlySalary;
    private String departmentName;
    
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getEmpContact() {
		return empContact;
	}
	public void setEmpContact(String empContact) {
		this.empContact = empContact;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpGender() {
		return empGender;
	}
	public void setEmpGender(String empGender) {
		this.empGender = empGender;
	}
	public int getTotalPresentDays() {
		return totalPresentDays;
	}
	public void setTotalPresentDays(int totalPresentDays) {
		this.totalPresentDays = totalPresentDays;
	}
	public int getTotalAbsentDays() {
		return totalAbsentDays;
	}
	public void setTotalAbsentDays(int totalAbsentDays) {
		this.totalAbsentDays = totalAbsentDays;
	}
	public double getTotalHoursWorked() {
		return totalHoursWorked;
	}
	public void setTotalHoursWorked(double totalHoursWorked) {
		this.totalHoursWorked = totalHoursWorked;
	}
	public double getMonthlySalary() {
		return monthlySalary;
	}
	public void setMonthlySalary(double monthlySalary) {
		this.monthlySalary = monthlySalary;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
    
}
