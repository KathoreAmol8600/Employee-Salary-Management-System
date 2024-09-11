package org.esm.controller;

import java.util.List;

import org.esm.model.Attendance;
import org.esm.model.Department;
import org.esm.model.EmployeeRegister;
import org.esm.service.AttendanceService;
import org.esm.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AttendanceController {
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	AttendanceService attendanceService;
	
	@RequestMapping("/inputfrom")
	public String tackAttendance(Model model) {

		List<EmployeeRegister> list = employeeService.getAllEmployee();
		model.addAttribute("emp", list);
		return "Attendance-inputFrom" ;
	}

	@RequestMapping("/a")
	public String  showAttendance(Model model) {
		System.out.println("inside the attandandfghce");
		System.out.println("inside the attandance");
		return "Attendance-list" ;
	}
	
	@RequestMapping(value="/AttendanceSave" , method = RequestMethod.GET)
     public String saveAttendance(Attendance attendance,Model model) {
		
//		System.out.println(attendance.getEmpId());
//		System.out.println(attendance.getDate());
//		System.out.println(attendance.getStatus());
//		System.out.println(attendance.getHoursWorked());
		boolean bret = attendanceService.saveAttendance(attendance);
        if(bret) {
        	model.addAttribute("msg", "Save Seccsfulley");
        	List<EmployeeRegister> list = employeeService.getAllEmployee();
    		model.addAttribute("emp", list);
    		return "Attendance-inputFrom" ;
        }else {
        	model.addAttribute("msg", " does not Save Seccsfulley");
        	List<EmployeeRegister> list = employeeService.getAllEmployee();
    		model.addAttribute("emp", list);
    		return "Attendance-inputFrom" ;
        }
	
	}
	@RequestMapping("/AttendanceList")
	public String getAttendanceList(Model model) {
		List<Attendance> list = attendanceService.getAttendanceList();
		model.addAttribute("attendance", list);
		return  "Attendance-list";
	}
}
