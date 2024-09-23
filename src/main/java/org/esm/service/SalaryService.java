package org.esm.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.esm.model.Salary;
import org.esm.model.SalarySlip;
import org.esm.repository.SalaryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("SalaryService")
public class SalaryService {

	@Autowired
	SalaryRepo salaryRepo;
	
	public SalarySlip  genratSalarySlip(Salary salary) {
		// TODO Auto-generated method stub
		SalarySlip salarySlip =salaryRepo.getMonthlySalary(salary);
		salarySlip.setMonthlySalary(this.countSalary(salarySlip.getTotalHoursWorked(), salarySlip.getMonthlySalary()));
		return   salarySlip;
	}

	 public double  countSalary(double d, double e) {
		 double perhouerSal = e/30;
		 return  perhouerSal*d;
		 
	 }

	public Map<String, Integer> getAttendanceStatusForToday() {
		// TODO Auto-generated method stub
		return salaryRepo.getAttendanceStatusForToday();
	}
}
