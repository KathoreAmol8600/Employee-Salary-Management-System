package org.esm.controller;

import java.util.List;

import org.esm.model.EmployeeRegister;
import org.esm.model.Salary;
import org.esm.model.SalarySlip;
import org.esm.service.EmployeeService;
import org.esm.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SalaryController {

	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	SalaryService salaryService;
	
	@RequestMapping("/salary_show")
		public String salaryShow(Model model) {
		List<EmployeeRegister> list = employeeService.getAllEmployee();
		model.addAttribute("emp", list);
		return "Salary";
	}
	
	@RequestMapping(value="/salary_slip",method = RequestMethod.POST)
	public String genrateSalarySlip(Salary salary,Model model) {
		
//			SalarySlip list = salaryService.genratSalarySlip(salary);
//			model .addAttribute("salaryslip", list);
		SalarySlip salaryslip = salaryService.genratSalarySlip(salary);
			model .addAttribute("salaryslip", salaryslip);
	     	model.addAttribute("work", salary);
	     	System.out.println(salary.getPeriodEnd());
		return "Salary-Slip";
	}
}
