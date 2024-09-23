package org.esm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LeaveManagmentController {

	@RequestMapping("/admin_leave")
	public String leave() {
		return "Leave";
	}
}
