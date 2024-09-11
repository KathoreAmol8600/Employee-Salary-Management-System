package org.esm.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.xml.transform.Templates;

import org.esm.model.EmployeeRegister;
import org.esm.model.Salary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("SalaryRepo")
public class SalaryRepo {

	@Autowired
	JdbcTemplate template;
	
	public List<Salary> getMonthlySalary(){
		RowMapper<Salary> r = new RowMapper<Salary>() {
			@Override
			public Salary mapRow(ResultSet rs, int rowNum) throws SQLException {
				Salary salary= new Salary();
				salary.setEmpId(rs.getInt("EmpId"));
				
				return salary;
			}
		};
		List<Salary> list  = template.query(" SELECT e.*, d.DepName FROM employee e  JOIN department d ON e.EmpDepartmentId = d.DepId ",r);
		return list.size()>0? list:null;
	}
}
