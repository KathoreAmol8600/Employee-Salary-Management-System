package org.esm.service;
import java.util.List;

import org.esm.model.AdminSave;
import org.esm.model.EmployeeRegister;
import org.esm.repository.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("employeeService")
public class EmployeeService {

	@Autowired
	EmployeeRepo employeeRepo;
	
	public boolean addEmployee(EmployeeRegister employeeRegister) {
		return employeeRepo.addEmployee(employeeRegister);
	}
	
	public List<EmployeeRegister> getAllEmployee(){
		return employeeRepo.getAllEmployee();
	}
	
	
	public String validateEmployeeCredentials(String username,String password) {
		String passwordFromDb = employeeRepo.getPasswordByUsername(username);
		if(null != passwordFromDb) {
			return passwordFromDb.equals(password) ? "Success" : "Invalid credentals!";
		} else {
			return "You are not registered as Employee!";
		}
		
	}
		
		
//		 List<EmployeeRegister> list  = employeeRepo.getAllEmployee();
//		 if (list != null) {
//			 for (EmployeeRegister employee : list) {
//			
//				    if(username.equals(employee.getEmpUsername()) &&  (password.equals(employee.getEmpPassword()))){
//				    	return true;
//				    }
//				}
//			} else {
//			
//			    System.out.println("The list of admins is null.");
//				return false;
//			}
//		return false;
//	}
	
	public boolean deleteEmployee(int empId) {
		return employeeRepo.deleteEmployee(empId);
	}
	
	public  EmployeeRegister getEmployeeObject(int id) {
		return employeeRepo.getEmployeeById(id);
	}

	public Boolean updateEmployeeDetails(EmployeeRegister employeeRegister) {
		// TODO Auto-generated method stub
		return employeeRepo.updateEmployee(employeeRegister) ;
	}

	public int  getTotalEmployee() {
		// TODO Auto-generated method stub
		return employeeRepo.countTotalEmployee();
	}
}

