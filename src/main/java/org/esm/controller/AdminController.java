package org.esm.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import java.util.Map;

import org.esm.model.AdminSave;
import org.esm.model.Department;
import org.esm.model.EmployeeRegister;
import org.esm.service.AdminService;
import org.esm.service.DepartmentService;
import org.esm.service.EmployeeService;
import org.esm.service.SalaryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class AdminController {

	@Autowired
	AdminService  adminService;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	DepartmentService  departmentService;

	@Autowired
	SalaryService salaryService;
	
	@Autowired
	DepartmentService  De_Service;


	@RequestMapping("/adminlogout")
	public String adminLogout() {
		return "index";
	}

	@RequestMapping("/Rege_Admin")
	public String reg_Admin() {
		return "adminRegestration";
	}

	@RequestMapping(value="/adminRegestration",method= RequestMethod.POST)
	public String getAdminRegData(AdminSave adminSave,Map<String, String> map)  {

		boolean bret = adminService.isLoginAdmin(adminSave);
		System.out.println("secsefulley add data");

		if(bret) {
			map.put("msg","Data Added Secsefulley");
			return "index";
		}else {
			map.put("msg","Data Added does not  Secsefulley");
			return "adminRegestration";   
		}
	}

	//	@RequestMapping("/manage")
	//	public String  manageAdmin(Map<String,List<AdminSave>> map) {
	//		List<AdminSave> list = Ad_Service.getAdmin();
	//		map.put("adminref",list );
	//		return  "Adminmanage1";
	//	}

	//	 @GetMapping("/delete/{adminid}")
	//	    public String deleteAdmin(@PathVariable("adminid") int adminid,Map<String,List<AdminSave>> map) {
	//		 System.out.println("this is the deleter "+adminid);
	//		 boolean bret= Ad_Service.deleteAdmin(adminid);
	//		 System.out.println(bret);
	//		 List<AdminSave> list = Ad_Service.getAdmin();
	//			map.put("adminref",list );
	//			return  "Adminmanage";
	//	    }
	@RequestMapping("/editProfile")
	public String editEmployee(Model model ) {
		model.addAttribute("admin", adminService.getAdmin());
		   model.addAttribute("admin", adminService.getAdmin());
		return "adminProfileUpdate";
	}

	@RequestMapping("/change-adminPassword") 
	public String changeAdminPassword(Model model) {
		   model.addAttribute("admin", adminService.getAdmin());
		return "adminChangePassword" ;
	}

	@RequestMapping("/home-admin") 
	public String homeAdmin(Model model) {
		   model.addAttribute("admin", adminService.getAdmin());
		   model.addAttribute("countemployee",employeeService.getTotalEmployee());
		   Map<String, Integer> attendanceStatus = salaryService.getAttendanceStatusForToday();
           model.addAttribute("presentCount", attendanceStatus.getOrDefault("present", 0));
           model.addAttribute("absentCount", attendanceStatus.getOrDefault("absent", 0));
           model.addAttribute("onLeaveCount", attendanceStatus.getOrDefault("leave", 0));
		    model.addAttribute("attendanceStatus", attendanceStatus);
		    int totalDepartmnt = De_Service.countTotalDepartment();
		    model.addAttribute("totalDepartment", totalDepartmnt);
		return "admindashbord1" ;
	}

	@RequestMapping(value="/admin-changePassword",method= RequestMethod.POST)
	public String changeAdminPassword(AdminSave adminSave,Model model){
		//		System.out.println(adminSave.getPassword());
		//		System.out.println(adminSave.getUsername());
		//			 return "redirect:/allEmployee";
		boolean status = adminService.changePassword(adminSave);
		if(status) {
			return "redirect:/editProfile";
		}else{
			model.addAttribute("msg","Enter the Coorect Username");
			return "adminChangePassword"; 
		}
	}
}






