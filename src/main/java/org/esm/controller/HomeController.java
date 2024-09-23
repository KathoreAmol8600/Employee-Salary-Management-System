package org.esm.controller;
import java.util.List;
import java.util.Map;


import org.esm.model.AdminSave;
import org.esm.model.EmployeeRegister;
import org.esm.model.Login;
import org.esm.repository.DepartmentRepo;
import org.esm.service.AdminService;
import org.esm.service.DepartmentService;
import org.esm.service.EmployeeService;
import org.esm.service.SalaryService;
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
	@Autowired
	SalaryService salaryService;
	@Autowired
	DepartmentService  De_Service;

	@RequestMapping("/")
	public String homePage() {
		return "index";
	}
	@RequestMapping("/login")
	public String homeP() {
		return "index1";
	}
	// for login after the registration
	@RequestMapping(value="/admindashbord", method = RequestMethod.POST)
	public String login(Login login, Map<String, Object> map, Model model) {
	    String message = null;
	    String status = "failure"; // Default status

	    if (login.getRole().equals("ADMIN")) {
	        message = adminService.validateAdminCredentials(login.getUsername(), login.getPassword());
	        if ("Success".equals(message)) {
	            status = "success";
	            model.addAttribute("admin", adminService.getAdmin());
	            model.addAttribute("countemployee", employeeService.getTotalEmployee());
	            Map<String, Integer> attendanceStatus = salaryService.getAttendanceStatusForToday();
	            model.addAttribute("presentCount", attendanceStatus.getOrDefault("present", 0));
	            model.addAttribute("absentCount", attendanceStatus.getOrDefault("absent", 0));
	            model.addAttribute("onLeaveCount", attendanceStatus.getOrDefault("leave", 0));
	 		    model.addAttribute("attendanceStatus", attendanceStatus);
	 		    int totalDepartmnt = De_Service.countTotalDepartment();
	 		    model.addAttribute("totalDepartment", totalDepartmnt);
	 		   model.addAttribute("msg", status);
	            return "admindashbord1";
	        }
	    } else if (login.getRole().equals("EMPLOYEE")) {
	        try {
				message = employeeService.validateEmployeeCredentials(login.getUsername(), login.getPassword());
				System.out.println(message);
				if ("Success".equals(message)) {
				    status = "success";
				    int empid = employeeService.getempIdUsingUSernamePassword(login.getUsername(), login.getPassword());
				    EmployeeRegister emp = employeeService.getEmployeeById(empid);
				    model.addAttribute("employee", emp);
				    return "Employeedashbord";
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				  model.addAttribute("msg", "Invailed creditials");
				 return "index1";
			}
	    }

	    // Pass status and message to the JSP
	    model.addAttribute("msg", message);
	    return "index1";
	}

}
