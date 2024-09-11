	package org.esm.repository;
	
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.List;
	
	import org.esm.model.AdminSave;
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.jdbc.core.JdbcTemplate;
	import org.springframework.jdbc.core.PreparedStatementSetter;
	import org.springframework.jdbc.core.RowMapper;
	import org.springframework.stereotype.Repository;
	
	@Repository("Adminrepo")
	public class AdminRepo{
	
		@Autowired
		JdbcTemplate template;
	
		public boolean saveAdmin(AdminSave adminSave) {
			int ret = template.update(
					"INSERT INTO admin (firstname, lastname, con_num, email, dateofbirth,username,password) VALUES (?, ?, ?, ?, ?,?,?)",
				new PreparedStatementSetter() {
					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, adminSave.getFirstname());
						ps.setString(2, adminSave.getLastname());
						ps.setLong(3, adminSave.getCon_num());
						ps.setString(4, adminSave.getEmail());
						ps.setDate(5, adminSave.getDateofbirth());
					
						ps.setString(7, adminSave.getPassword());
	
					}
				});
		return ret>0?true:false;
	}
	
	public AdminSave  getAllAdmins() {
		RowMapper<AdminSave> r = new RowMapper<AdminSave>() {
			@Override
			public AdminSave mapRow(ResultSet rs, int rowNum) throws SQLException {
				AdminSave repoadmin = new AdminSave();
				repoadmin.setAdminid(rs.getInt("adminid"));
				repoadmin.setFirstname(rs.getString("firstname"));
				repoadmin.setLastname(rs.getString("lastname"));
				repoadmin.setCon_num(rs.getLong("con_num"));
				repoadmin.setEmail(rs.getString("email"));
				repoadmin.setDateofbirth(rs.getDate("dateofbirth"));
				repoadmin.setPassword(rs.getString("password"));
				return repoadmin;
			}
		};
		List<AdminSave> adminlist  = template.query("select * from admin",r);
		return (null != adminlist && adminlist.size() > 0) ? adminlist.get(0) : null;
		}
	
	public boolean  deleteAdmin(int idAdmin) {
		  int rowsAffected = template.update("DELETE FROM admin WHERE Adminid = ?",  idAdmin);
		  if(rowsAffected>0) {
			  return  true;
		  }else {
			  return false;
		  }
	}
	
	 public boolean updateAdminPassword(AdminSave adminSave) {
	        String sql = "update admin set password=? where email=? or con_num=?";
	       int ret =  template.update(sql,adminSave.getPassword(),adminSave.getUsername(),adminSave.getUsername());
	       return  ret>0?true:false;
	    }
	}