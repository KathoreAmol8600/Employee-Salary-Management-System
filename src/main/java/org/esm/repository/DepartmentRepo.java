package org.esm.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.esm.model.AdminSave;
import org.esm.model.Department;
import org.esm.model.EmployeeRegister;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowCallbackHandler;
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

	//update department id and department name :-> update department set depname='employee',depid=7 where depid=0;
	 public boolean updateDepartment(Department department , int depId) {
	       String sql = "UPDATE department SET DepId = ?, DepName = ? WHERE DepId = ?";
	       int ret =  template.update(sql,department.getDepId(),department.getDepName(),depId);
	       return  ret>0?true:false;
	    }


//	public Department getDepartmentById(int depId) {
//		// TODO Auto-generated method stub
//		String sql = " select * from department where depid=?";
//		
//		
//	}
	
	public  Department getDepartmentById(int depId) {
		String query ="select * from department where depid=?";// "select * from employee where empid = ?";
		List<Department>  department= template.query(query, this.getRowMapper(), depId);
		return (null != department && department.size() > 0) ? department.get(0) : null;
	}


	private RowMapper<Department> getRowMapper() {
		// TODO Auto-generated method stub
		return new RowMapper<Department>() {
			@Override
			public Department mapRow(ResultSet rs, int rowNum) throws SQLException {
				Department  department= new Department();
				department.setDepId(rs.getInt("DepId"));
			    department.setDepName(rs.getString("DepName"));
				
				return department;
			}
		};
		
	}
	 
	//delete depname where depid - >delete from department depname where depid=7;
	
}
