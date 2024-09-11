package org.esm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SalaryController {

	@RequestMapping("/salary_show")
		public String salaryShow() {
		
		return "Salary";
	}
}
