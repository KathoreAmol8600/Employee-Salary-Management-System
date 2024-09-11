package org.esm.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.esm.model.AdminSave;
import org.esm.model.Department;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("departmentrepo")
public class DepartmentRepo {

	@Autowired
	JdbcTemplate template;
	public boolean insertDepartment(Department department) {
		int ret = template.update(
				"INSERT INTO department (DepId , DepName) VALUES (?, ?)",
				new PreparedStatementSetter() {
					@Override
					public void setValues(PreparedStatement ps) throws SQLException {

						ps.setInt(1,department.getDepId());
						ps.setString(2, department.getDepName());
					}
				});
		return ret>0?true:false;
	}


	public List<Department> getAllDepartment() {   
		RowMapper<Department> r = new RowMapper<Department>() {
			@Override
			public Department mapRow(ResultSet rs, int rowNum) throws SQLException {
				Department repoDepaertment = new Department();
				repoDepaertment.setDepId(rs.getInt("DepId"));;
				repoDepaertment.setDepName(rs.getString("DepName"));;

				return repoDepaertment;
			}
		};
		List<Department> list  = template.query("select * from department",r);
		return list.size()>0? list:null;
	}

	 public int countTotalDepartment() {
		 String sql = "SELECT COUNT(*) FROM department";
	        return template.queryForObject(sql, Integer.class);
	 }
	 
	public boolean deleteDepartment(int departmentId) {
	  
	  return  template.update("DELETE FROM department WHERE EmpId = ?",departmentId)>0?true:false;
	}
	
//	public List<Department> getDepartmentByID(int id) {   
//		RowMapper<Department> r = new RowMapper<Department>() {
//			@Override
//			public Department mapRow(ResultSet rs, int rowNum) throws SQLException {
//				Department repoDepaertment = new Department();
//				repoDepaertment.setDepId(rs.getInt("DepId"));;
//				return repoDepaertment;
//			}
//		};
//		List<Department> list  = template.query("select * from department where DepId=?",r);
//		return list.size()>0? list:null;
//	}

}
