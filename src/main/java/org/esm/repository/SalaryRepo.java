package org.esm.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.xml.transform.Templates;

import org.esm.model.EmployeeRegister;
import org.esm.model.Salary;
import org.esm.model.SalarySlip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("SalaryRepo")
public class SalaryRepo {

	@Autowired
	JdbcTemplate template;
	
	public SalarySlip getMonthlySalary(Salary Salary){
		RowMapper<SalarySlip> r = new RowMapper<SalarySlip>() {
			@Override
			public SalarySlip mapRow(ResultSet rs, int rowNum) throws SQLException {
				SalarySlip salarySlip= new SalarySlip();
				salarySlip.setEmpId(rs.getInt("EmpId"));
				salarySlip.setEmpName(rs.getString("EmpName"));
				salarySlip.setEmpContact(rs.getString("EmpContact"));
				salarySlip.setEmpEmail(rs.getString("EmpEmail"));
				salarySlip.setEmpGender(rs.getString("EmpGender"));
				salarySlip.setDepartmentName(rs.getString("DepName"));
				salarySlip.setTotalPresentDays(rs.getInt("TotalPresentDays"));
				salarySlip.setTotalAbsentDays(rs.getInt("TotalAbsentDays"));
				salarySlip.setTotalHoursWorked(rs.getInt("TotalHoursWorked"));
				salarySlip.setMonthlySalary(rs.getDouble("MonthlySalary"));
	
				return salarySlip;
			}
		};
		  String sql = "SELECT e.EmpId, e.EmpName, e.EmpContact, e.EmpEmail, e.EmpGender, " +
                  "d.DepName, " +
                  "COALESCE(present.TotalPresentDays, 0) AS TotalPresentDays, " +
                  "COALESCE(absent.TotalAbsentDays, 0) AS TotalAbsentDays, " +
                  "COALESCE(hours.TotalHoursWorked, 0) AS TotalHoursWorked, " +
                  "e.BaseSalary AS MonthlySalary " +
                  "FROM employee e " +
                  "LEFT JOIN (SELECT EmpId, COUNT(*) AS TotalPresentDays " +
                  "            FROM attendance " +
                  "            WHERE Status = 'Present' AND Date BETWEEN ? AND ? " +
                  "            GROUP BY EmpId) present ON e.EmpId = present.EmpId " +
                  "LEFT JOIN (SELECT EmpId, COUNT(*) AS TotalAbsentDays " +
                  "            FROM attendance " +
                  "            WHERE Status = 'Absent' AND Date BETWEEN ? AND ? " +
                  "            GROUP BY EmpId) absent ON e.EmpId = absent.EmpId " +
                  "LEFT JOIN (SELECT EmpId, SUM(HoursWorked) AS TotalHoursWorked " +
                  "            FROM attendance " +
                  "            WHERE Status = 'Present' AND Date BETWEEN ? AND ? " +
                  "            GROUP BY EmpId) hours ON e.EmpId = hours.EmpId " +
                  "LEFT JOIN department d ON e.EmpDepartmentId = d.DepId " +
                  "WHERE e.EmpId = ?";
		List<SalarySlip> list =  template.query( sql,r,Salary.getPeriodStart(),Salary.getPeriodEnd(),Salary.getPeriodStart(),Salary.getPeriodEnd(),Salary.getPeriodStart(),Salary.getPeriodEnd(),Salary.getEmpId());
		return list.size()>0? list.get(0):null;
	}
	
	public Map<String, Integer> getAttendanceStatusForToday() {
	    String sql = "SELECT Status, COUNT(*) AS EmployeeCount " +
	                 "FROM attendance " +
	                 "WHERE Date = CURRENT_DATE " + // Use CURRENT_DATE directly
	                 "GROUP BY Status";

	    return template.query(sql, new RowMapper<Map<String, Integer>>() {
	        @Override
	        public Map<String, Integer> mapRow(ResultSet rs, int rowNum) throws SQLException {
	            Map<String, Integer> statusMap = new HashMap<>();
	            statusMap.put(rs.getString("Status"), rs.getInt("EmployeeCount"));
	            return statusMap;
	        }
	    }).stream().reduce(new HashMap<>(), (acc, map) -> {
	        acc.putAll(map);
	        return acc;
	    });
	}
//
//	public char[] genrateSalarySlip(Salary salary) {
//		RowMapper<Salary> r = new RowMapper<Salary>() {
//			@Override
//			public Salary mapRow(ResultSet rs, int rowNum) throws SQLException {
//				SalarySlip salaryslip= new SalarySlip();
//				salary.setEmpId(rs.getInt("EmpId"));
//				
//				return salary;
//			}
//		};
//		List<SalarySlip> list  = template.query(" ",r);
//		return list.size()>0? list:null;
//	}
}
