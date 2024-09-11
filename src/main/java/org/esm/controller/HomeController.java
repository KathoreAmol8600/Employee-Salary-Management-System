package org.esm.controller;
import java.util.List;
import java.util.Map;


import org.esm.model.AdminSave;
import org.esm.model.Login;
import org.esm.service.AdminService;
import org.esm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@Autowired
	AdminService  adminService;
	@Autowired
	EmployeeService employeeService;

	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	@RequestMapping("/login")
	public String homeP() {
		return "index1";
	}
	// for login after the registration
	@RequestMapping(value="/admindashbord",method = RequestMethod.POST)
	public String login(Login login ,Map<String, String> map,Model model) {
		if(login.getRole().equals("ADMIN")) {
			String message =  adminService.validateAdminCredentials(login.getUsername(),login.getPassword());
			   if("Success".equals(message)) {
				   model.addAttribute("admin", adminService.getAdmin());
				   model.addAttribute("countemployee",employeeService.getTotalEmployee());
				   return "admindashbord1";
			   }else {
				   map.put("msg",message);
				   return "index1";
			   }
		}else if(login.getRole().equals("EMPLOYEE")) {
			   String message = employeeService.validateEmployeeCredentials(login.getUsername(),login.getPassword());
			   if("Success".equals(message)) {
				   return "Employeedashbord";
			   }else {
				   map.put("msg",message);
				   return "index1";
			   }
		}
		return "index1";
	}
}
