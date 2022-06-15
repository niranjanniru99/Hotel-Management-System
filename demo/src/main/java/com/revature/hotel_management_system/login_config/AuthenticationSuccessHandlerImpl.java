package com.revature.hotel_management_system.login_config;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.revature.hotel_management_system.model.Roles;
import com.revature.hotel_management_system.repo.AdminRepo;
import com.revature.hotel_management_system.repo.CustomerRepo;
import com.revature.hotel_management_system.repo.RolesRepo;
import com.revature.hotel_management_system.services.ReceptionistLogInService;

@Component
public class AuthenticationSuccessHandlerImpl implements AuthenticationSuccessHandler {

	@Autowired
	ReceptionistLogInService receptionistLogInService;
	@Autowired
	RolesRepo rolesRepo;
	@Autowired
	AdminRepo adminRepo;
	@Autowired
	CustomerRepo customerRepo;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
			
			Roles roles=rolesRepo.findById(request.getParameter("emailId")).orElse(null);
			if(roles.getRole().equalsIgnoreCase("ADMIN")) {
				request.getSession().setAttribute("rname", adminRepo.findById(request.getParameter("emailId")).orElse(null).getName());
				request.setAttribute("role", "Admin");
				response.sendRedirect("/admin/admin-dashboard.jsp");
			}
			else if(roles.getRole().equalsIgnoreCase("RECEPTIONIST")) {
				request.getSession().setAttribute("rname", receptionistLogInService.getReceptionistName(request.getParameter("emailId")));
				request.setAttribute("role", "Receptionist");
			response.sendRedirect("/receptionist/dashboard.jsp");
			}
			else if(roles.getRole().equalsIgnoreCase("CUSTOMER")) {
				request.getSession().setAttribute("rname", customerRepo.findById(request.getParameter("emailId")).orElse(null).getUserName());
				request.setAttribute("role", "Customer");
			response.sendRedirect("/customer/user-dashboard.jsp");
			}
	}

}
