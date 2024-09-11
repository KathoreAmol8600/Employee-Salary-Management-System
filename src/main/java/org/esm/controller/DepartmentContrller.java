package org.esm.controller;

import java.util.List;
import java.util.Map;
import org.esm.model.AdminSave;
import org.esm.model.Department;
import org.esm.service.AdminService;
import org.esm.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DepartmentContrller {
	@Autowired
	DepartmentService  De_Service;
	
	@RequestMapping("/inputFrom-adddepartment")
	public String Department() {
		return  "admin-AddDepartment";
	}
	
	
	@RequestMapping("/add-department")
	public String addDepartment(Department department,Map<String, String> map) {
		if( De_Service.insertDepartment(department)){
			map.put("msg","Department Add successfully ");
			return "admin-AddDepartment";  
		}else {
			map.put("msg","Sorry,Department does not successfully");
			return  "admin-AddDepartment";
		}
	
	}
	
	@RequestMapping("/view-department")
	public String getAllDepartment(Map<String,List<Department>> map) {
		
		List<Department> list = De_Service.getAllDepartment();
		map.put("departmentre",list );
		return  "viewDepartment";
	}
//	department-edit=4
//	 @GetMapping("/department-update={depId}")
//	    public String updateEmployee(Department department,@PathVariable("depId") int depId ) {
//		              System.out.println(depId);
//		             boolean  status  = De_Service.updateDepartment(department ,depId);
//		          
//		           return "Department-update";
//	             //   return "redirect:/view-department";
//	    }



}
