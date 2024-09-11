package org.esm.model;

import java.math.BigDecimal;
import java.sql.Date;

public class Salary {
	private int calcId;
    private Integer empId; 
    private Date periodStart;
    private Date periodEnd;
    private Integer totalDaysWorked;
    private BigDecimal totalHoursWorked;
    private Integer totalAbsentDays;
    private Integer totalPresentDays;
    private BigDecimal monthlySalary;
    
	public int getCalcId() {
		return calcId;
	}
	public void setCalcId(int calcId) {
		this.calcId = calcId;
	}
	public Integer getEmpId() {
		return empId;
	}
	public void setEmpId(Integer empId) {
		this.empId = empId;
	}
	public Date getPeriodStart() {
		return periodStart;
	}
	public void setPeriodStart(Date periodStart) {
		this.periodStart = periodStart;
	}
	public Date getPeriodEnd() {
		return periodEnd;
	}
	public void setPeriodEnd(Date periodEnd) {
		this.periodEnd = periodEnd;
	}
	public Integer getTotalDaysWorked() {
		return totalDaysWorked;
	}
	public void setTotalDaysWorked(Integer totalDaysWorked) {
		this.totalDaysWorked = totalDaysWorked;
	}
	public BigDecimal getTotalHoursWorked() {
		return totalHoursWorked;
	}
	public void setTotalHoursWorked(BigDecimal totalHoursWorked) {
		this.totalHoursWorked = totalHoursWorked;
	}
	public Integer getTotalAbsentDays() {
		return totalAbsentDays;
	}
	public void setTotalAbsentDays(Integer totalAbsentDays) {
		this.totalAbsentDays = totalAbsentDays;
	}
	public Integer getTotalPresentDays() {
		return totalPresentDays;
	}
	public void setTotalPresentDays(Integer totalPresentDays) {
		this.totalPresentDays = totalPresentDays;
	}
	public BigDecimal getMonthlySalary() {
		return monthlySalary;
	}
	public void setMonthlySalary(BigDecimal monthlySalary) {
		this.monthlySalary = monthlySalary;
	}
    
}
