package org.esm.controller;

import java.util.List;
import java.util.Map;

import org.esm.model.Department;
import org.esm.model.EmployeeRegister;
import org.esm.service.AdminService;
import org.esm.service.DepartmentService;
import org.esm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {

@Autowired
DepartmentService  departmentService;

@Autowired
EmployeeService employeeService;

@Autowired
AdminService  adminService;

	@RequestMapping("/logout")
	public String empLogout() {
		return "index";
	}
	
	@RequestMapping("/employeeReg")
	public String selfRegisterEmployee(EmployeeRegister employeeRegister,Map<String,List<Department>> map) {
		 List<Department> list = departmentService.getAllDepartment();
		 map.put("department",list );
		return "Employee-registreation";
	}
	
	@RequestMapping("/Rege_Employee")
	public String reg_Employee(Map<String,List<Department>> map) {
	
		 List<Department> list = departmentService.getAllDepartment();
		 map.put("department",list );
		return "Employee-registreation";
	}
	@RequestMapping("/employee_add")
	public String addEmployee() {
		return "redirect:/Rege_Employee";
	}
	
	@RequestMapping(value="/addemployee",method= RequestMethod.POST)
	public String addemployee(EmployeeRegister employeeRegister,Map<String,List<Department>> map) {
	  employeeService.addEmployee(employeeRegister);
		 List<Department> list = departmentService.getAllDepartment();
		 map.put("department",list );
		 if(list!= null) {
			 return "index1";
		 }
		return  "Employee-registreation";
	}
	
	@RequestMapping("/allEmployee") 
	public String getAllEmployee(Model model) {
		List<EmployeeRegister> list = employeeService.getAllEmployee();
		model.addAttribute("emp", list);
		   model.addAttribute("admin", adminService.getAdmin());
	return "EmployeeProfile";
	}
	
	@RequestMapping(value="/empprofile",method= RequestMethod.POST)
	public String  showAllEmployee(EmployeeRegister employeeRegister,Map<String,List<Department>> map) {
	
		 List<Department> list = departmentService.getAllDepartment();
		 map.put("department",list );
		return  "Employeeshow1";
	}
	
	 @GetMapping("/delete={empId}")
	    public String deleteEmployee(@PathVariable("empId") int empId,Map<String,List<EmployeeRegister>> map) {
		 System.out.println(empId);
		 boolean bret= employeeService.deleteEmployee(empId);
		 System.out.println(bret);
		 List<EmployeeRegister> list =employeeService.getAllEmployee();
		 map.put("emp",list );
	
			return "EmployeeProfile";
	    }
	 
	 @RequestMapping("/employee")
	 public String  getEmployee(EmployeeRegister employeeRegister,Map<String,List<EmployeeRegister>> map) {
	     // method implementation
			List<EmployeeRegister> list = employeeService.getAllEmployee();
	        map.put("emp",list );
		 return "EmployeeUpdate";
	 }

	 @GetMapping("/edit={empId}")
	    public String editEmployee(@PathVariable("empId") int empId, Model model ) {
	                System.out.println(empId);
	                model.addAttribute("employee",employeeService.getEmployeeObject(empId));
	                model.addAttribute("admin", adminService.getAdmin());
	                return "EmployeeUpdate";
	    }
	 
	 @RequestMapping(value = "/update-employee",method = RequestMethod.POST)
	 public String  updateEmployee(EmployeeRegister employeeRegister) {
		 Boolean status = employeeService.updateEmployeeDetails(employeeRegister);
		if(status) {
			 return "redirect:/allEmployee";    
		}else {
			   int id = employeeRegister.getEmpId();
			   return "redirect:/edit=/" + id;
		}
	 }
	 
}
