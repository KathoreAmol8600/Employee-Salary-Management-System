package org.esm.service;

import java.util.List;

import org.esm.model.AdminSave;
import org.esm.model.Department;
import org.esm.repository.AdminRepo;
import org.esm.repository.DepartmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("De_Service")
public class DepartmentService {
	@Autowired
	DepartmentRepo  departmentrepo ;

	public boolean  insertDepartment(Department department) {
		return  departmentrepo.insertDepartment(department);

	}
	
	public List<Department> getAllDepartment(){
		return departmentrepo.getAllDepartment();
	}

	/*
	 * public boolean updateDepartment(Department department, int depId) { // TODO
	 * Auto-generated method stub return
	 * departmentrepo.updateDepartment(department,depId); }
	 */
	
}
