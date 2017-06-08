package fr.formation.projetLesParisiens.entity;

import java.util.Arrays;
import java.util.Collection;

import javax.persistence.Transient;

import org.springframework.security.core.userdetails.UserDetails;

public class Account implements UserDetails {

	private static final long serialVersionUID = 1L;

	private Integer accountid;

	private String username;

	private String password;

	private Boolean enabled;

	private Role role;

	/**
	 * @return the role
	 */
	public Role getRole() {
		return role;
	}

	/**
	 * @param role
	 *            the role to set
	 */
	public void setRole(Role role) {
		this.role = role;
	}

	/**
	 * @return the id
	 */
	public Integer getAccountid() {
		return accountid;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setAccountid(Integer accountid) {
		this.accountid = accountid;
	}

	/**
	 * @param username
	 *            the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @param password
	 *            the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @param enabled
	 *            the enabled to set
	 */
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	@Transient
	public Collection<Role> getAuthorities() {
		// TODO Auto-generated method stub
		return Arrays.asList(this.role);
	}

	@Override
	@Transient
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	@Transient
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	@Transient
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return this.enabled;
	}

}
