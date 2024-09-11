package org.esm.model;

import java.math.BigDecimal;
import java.sql.Date;

public class Attendance {

	    private int attId;           
	    private Integer empId;     
	    private Date date;         
	    private String status;    
	    private BigDecimal hoursWorked;
	    
		public int getAttId() {
			return attId;
		}
		public void setAttId(int attId) {
			this.attId = attId;
		}
		public Integer getEmpId() {
			return empId;
		}
		public void setEmpId(Integer empId) {
			this.empId = empId;
		}
		public Date getDate() {
			return date;
		}
		public void setDate(Date date) {
			this.date = date;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		public BigDecimal getHoursWorked() {
			return hoursWorked;
		}
		public void setHoursWorked(BigDecimal hoursWorked) {
			this.hoursWorked = hoursWorked;
		} 
	    
}
