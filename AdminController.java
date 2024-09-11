package org.employee.controller;
import java.util.List;
import java.util.Map;
import org.employee.model.AdminSave;
import org.employee.model.EmployeeRegister;
import org.employee.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

@Autowired
AdminService  Ad_Service;
	
	@RequestMapping(value="/adminRegestration",method= RequestMethod.POST)
	public String getAdminRegData(AdminSave adminSave,Map<String, String> map) {
		
		boolean bret = Ad_Service.isLoginAdmin(adminSave);
		System.out.println("secsefulley add data");
		
		if(bret) {
			map.put("msg","Data Added Secsefulley");
		}else {
			map.put("msg","Data Added does not  Secsefulley");
		}
		return "adminRegestration";
	}
     

//	@RequestMapping(value="/getalladmin",method= RequestMethod.POST)
//	public String getAllAdmin(Map<String,List<AdminSave>> map) {
//		
//		List<AdminSave> list = Ad_Service.getAdmin();
//		System.out.println(list.isEmpty());
//		map.put("adminref",list );
//		return "adminshow";
//	}
	
	@RequestMapping(value="/addemployee",method= RequestMethod.POST)
	public String addemployee(EmployeeRegister EmployeeRegister) {
		System.out.println(EmployeeRegister.getFirstname());
		System.out.println(EmployeeRegister.getDepartment());
		return null;
	}
	
	
}
