package org.esm.service;

import java.util.List;

import org.esm.model.Attendance;
import org.esm.repository.AttendanceRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("attendanceService")
public class AttendanceService {

	@Autowired
	AttendanceRepo attendanceRepo;
	public boolean saveAttendance(Attendance attendance) {
		// TODO Auto-generated method stub
		return attendanceRepo.saveAttendance(attendance);
	}
	public List<Attendance> getAttendanceList() {
		// TODO Auto-generated method stub
		return attendanceRepo.getAttendanceList();
	}

}
