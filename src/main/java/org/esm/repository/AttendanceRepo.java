package org.esm.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.esm.model.Attendance;
import org.esm.model.EmployeeRegister;
import org.esm.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository("attendanceRepo")
public class AttendanceRepo {

	@Autowired
	JdbcTemplate template;

	public boolean saveAttendance(Attendance attendance) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO attendance (EmpId, Date, Status, HoursWorked)VALUES (?,?,?,?) ";
	int status = 	template.update(sql, new PreparedStatementSetter() {
			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				// TODO Auto-generated method stub
				ps.setInt(1,attendance.getEmpId() );
				ps.setDate(2,attendance.getDate());
				ps.setString(3,attendance.getStatus());
				ps.setBigDecimal(4,attendance.getHoursWorked());
			}
		} );
		return status>0?true:false;
	}

	public List<Attendance> getAttendanceList() {
		// TODO Auto-generated method stub
        RowMapper<Attendance> r = new RowMapper<Attendance>() {

			@Override
			public Attendance mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				Attendance attendance = new Attendance();
				attendance.setEmpId(rs.getInt("EmpId"));
				attendance.setDate(rs.getDate("Date"));
				attendance.setStatus(rs.getString("Status"));
				attendance.setHoursWorked(rs.getBigDecimal("HoursWorked"));
				return attendance;
			}
		};
		
		List<Attendance> list  = template.query(" select * from attendance",r);
		return list.size()>0? list:null;
	}
	
}
