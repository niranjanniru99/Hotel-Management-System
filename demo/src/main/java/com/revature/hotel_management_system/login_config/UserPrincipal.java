package com.revature.hotel_management_system.login_config;

import java.util.Collection;
import java.util.Collections;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.revature.hotel_management_system.model.ReceptionistLogIn;

public class UserPrincipal implements UserDetails {
	
	private ReceptionistLogIn receptionistLogIn;

	public UserPrincipal(ReceptionistLogIn receptionistLogIn) {
		super();
		this.receptionistLogIn = receptionistLogIn;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return Collections.singleton(new SimpleGrantedAuthority("USER"));
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return receptionistLogIn.getPassword();
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return receptionistLogIn.getEmailId();
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
