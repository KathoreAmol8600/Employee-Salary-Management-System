package org.esm.repository;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.esm.model.EmployeeRegister;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("/emprepo")
public class EmployeeRepo {

	@Autowired
	JdbcTemplate template;

	public boolean addEmployee(EmployeeRegister employeeRegister) {
		int ret = template.update(
				// EmpId  EmpName    EmpContact    EmpEmail   EmpGender  EmpAddres EmpDateOfJoining  EmpDateOfLiving EmpDepartmentId  EmpUsername EmpPassword  
				"INSERT INTO employee (EmpName, EmpContact, EmpEmail, EmpGender,EmpAddres,EmpDateOfJoining,basesalary,EmpDepartmentId,EmpPassword) VALUES (?,?,?,?,?,?,?,?,?)",
				new PreparedStatementSetter() {
					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, employeeRegister.getEmpName().trim());
						ps.setString(2, employeeRegister.getEmpContact());
						ps.setString(3, employeeRegister.getEmpEmail().trim());
						ps.setString(4, employeeRegister.getEmpGender());
						ps.setString(5,employeeRegister.getEmpAddres().trim());
						ps.setDate(6,employeeRegister.getEmpDateOfJoining());
						ps.setBigDecimal(7,employeeRegister.getBasesalary());
						ps.setInt(8,employeeRegister.getEmpDepartmentId());
						ps.setString(9,employeeRegister.getEmpPassword());
					}
				});
		return ret>0?true:false;
	}

	public String getPasswordByUsername(String username) {
//		System.out.println("username"+username);
		RowMapper<String> rowMapper = new RowMapper<String>() {
			@Override
			public String mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getString("EmpPassword");
			}
		};
		String sql = "SELECT EmpPassword  FROM employee emp WHERE emp.EmpEmail = ? OR emp.EmpContact = ?";
		List<String> empList =  template.query( sql,  rowMapper, username, username);
		System.out.println(empList.get(0));
		return (null != empList && empList.size() > 0) ? empList.get(0) : null;
	}
	
	public int getEmpIdByUsernamePassword(String username , String password) {
		
	    RowMapper<Integer> rowMapper = new RowMapper<Integer>() {
	        @Override
	        public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
	            return rs.getInt("empid");
	        }
	    };
	    String sql = "SELECT empid FROM employee emp " +
                "WHERE (emp.EmpEmail = ? OR emp.EmpContact = ?) AND emp.EmpPassword = ?";

   // Execute the query and get the list of empids
   List<Integer> empList = template.query(sql, rowMapper, username, username, password);

   // Return the first result if available, otherwise return null
   return (empList != null && !empList.isEmpty()) ? empList.get(0) : null;
}
	

	public List<EmployeeRegister> getAllEmployee() {
		RowMapper<EmployeeRegister> r = new RowMapper<EmployeeRegister>() {
			@Override
			public EmployeeRegister mapRow(ResultSet rs, int rowNum) throws SQLException {
				EmployeeRegister repoemploye= new EmployeeRegister();
				repoemploye.setEmpId(rs.getInt("EmpId"));
				repoemploye.setEmpName(rs.getString("EmpName"));
				repoemploye.setEmpContact(rs.getString("EmpContact"));
				repoemploye.setEmpEmail(rs.getString("EmpEmail"));
				repoemploye.setEmpGender(rs.getString("EmpGender"));
				repoemploye.setEmpAddres(rs.getString("EmpAddres"));
				repoemploye.setEmpDateOfJoining(rs.getDate("EmpDateOfJoining"));	
				repoemploye.setEmpDepartmentId(rs.getInt("EmpDepartmentId"));
				repoemploye.setEmpPassword(rs.getString("EmpPassword"));
				repoemploye.setEmpDepName(rs.getString("DepName"));
				repoemploye.setBasesalary(rs.getBigDecimal("basesalary"));
				return repoemploye;
			}
		};
		List<EmployeeRegister> list  = template.query(" SELECT e.*, d.DepName FROM employee e  JOIN department d ON e.EmpDepartmentId = d.DepId ",r);
		return list.size()>0? list:null;
	}

	public boolean  deleteEmployee(int empId) {
		System.out.println("inside the repo emp ->"+empId);
		int rowsAffected = template.update("DELETE FROM employee WHERE EmpId = ?",  empId);
		if(rowsAffected>0) {
			return  true;
		}else {
			return false;
		}
	}

	public EmployeeRegister getEmployeeById(int empId) {
		String query ="SELECT e.*, d.DepName FROM employee e JOIN department d ON e.EmpDepartmentId = d.DepId  where e.empid = ? ";// "select * from employee where empid = ?";
		List<EmployeeRegister>  employeeList= template.query(query, this.getRowMapper(), empId);
		return (null != employeeList && employeeList.size() > 0) ? employeeList.get(0) : null;
	}


	private RowMapper<EmployeeRegister>  getRowMapper() {
		return new RowMapper<EmployeeRegister>() {
			@Override
			public EmployeeRegister mapRow(ResultSet rs, int rowNum) throws SQLException {
				EmployeeRegister repoemploye= new EmployeeRegister();
				repoemploye.setEmpId(rs.getInt("EmpId"));
				repoemploye.setEmpName(rs.getString("EmpName").trim());
				repoemploye.setEmpContact(rs.getString("EmpContact").trim());
				repoemploye.setEmpEmail(rs.getString("EmpEmail"));
				repoemploye.setEmpGender(rs.getString("EmpGender"));
				repoemploye.setEmpAddres(rs.getString("EmpAddres").trim());
				repoemploye.setEmpDateOfJoining(rs.getDate("EmpDateOfJoining"));	
				repoemploye.setEmpDepartmentId(rs.getInt("EmpDepartmentId"));
				repoemploye.setEmpPassword(rs.getString("EmpPassword"));
				repoemploye.setEmpDepName(rs.getString("DepName"));
				repoemploye.setBasesalary(rs.getBigDecimal("basesalary"));
				return repoemploye;
			}
		};
	}

	 public boolean updateEmployee(EmployeeRegister employee) {
	        String sql = "UPDATE employee SET EmpName = ?, EmpContact = ?,EmpEmail = ?,EmpGender = ?,EmpAddres = ?,basesalary=?  WHERE EmpId = ?";
	       int ret =  template.update(sql,employee.getEmpName(),employee.getEmpContact(),employee.getEmpEmail(),employee.getEmpGender(),employee.getEmpAddres(),employee.getBasesalary(),employee.getEmpId());
	       return  ret>0?true:false;
	    }
	 
	 public int countTotalEmployee() {
		 String sql = "SELECT COUNT(*) FROM employee";
	        return template.queryForObject(sql, Integer.class);
	 }
	 
}