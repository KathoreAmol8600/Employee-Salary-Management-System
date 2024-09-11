package org.esm.service;

import java.util.List;

import org.esm.model.AdminSave;
import org.esm.repository.AdminRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("Ad_Service")
public class AdminService  {

	@Autowired
	AdminRepo Adminrepo ;

	public boolean isLoginAdmin(AdminSave adminSave) {
		return Adminrepo.saveAdmin(adminSave);
	}

	public AdminSave   getAdmin(){
		return Adminrepo.getAllAdmins();
	}

	/*
	 * public boolean isAdmin(String Username,String Password) { List<AdminSave>
	 * list = Adminrepo.getAllAdmins(); if (list != null) { for (AdminSave admin :
	 * list) { if(Username.equals(admin.getUsername())&&
	 * (Password.equals(admin.getPassword()))){ return true; } } } else {
	 * System.out.println("The list of admins is null."); return false; } return
	 * false; }
	 */
	
	public boolean deleteAdmin(int idAdmin) {
		return Adminrepo.deleteAdmin(idAdmin);
	}

	public String validateAdminCredentials(String username, String password) {
//		String  passwordFromDb = Adminrepo.getPasswordByUsername(username);
//		if(null != passwordFromDb) {
//			return passwordFromDb.equals(password) ? "Success" : "Invalid credentals!";
//		} else {
//			return "You are not registered as Admin";
//		}
		return "Success";
	}

	public boolean changePassword(AdminSave adminSave) {
		// TODO Auto-generated method stub
		return  Adminrepo.updateAdminPassword(adminSave);
	}
}

