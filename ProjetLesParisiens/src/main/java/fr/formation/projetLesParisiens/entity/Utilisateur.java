package fr.formation.projetLesParisiens.entity;

import java.io.Serializable;
import java.util.Date;

public class Utilisateur implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer userid;
	private String lastname;
	private String surname;
	private Boolean pointofdelivery;
	private Boolean deliveryuser;
	private Date birthdate;
	private Integer phone;
	private String email;
	private Integer accountid;

	/**
	 * @return the accountid
	 */
	public Integer getAccountid() {
		return accountid;
	}

	/**
	 * @param accountid
	 *            the accountid to set
	 */
	public void setAccountid(Integer accountid) {
		this.accountid = accountid;
	}

	/**
	 * @return the userid
	 */
	public Integer getUserid() {
		return userid;
	}

	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}

	/**
	 * @return the surname
	 */
	public String getSurname() {
		return surname;
	}

	/**
	 * @return the pointofdelivery
	 */
	public Boolean getPointofdelivery() {
		return pointofdelivery;
	}

	/**
	 * @return the deliveryuser
	 */
	public Boolean getDeliveryuser() {
		return deliveryuser;
	}

	/**
	 * @return the birthdate
	 */
	public Date getBirthdate() {
		return birthdate;
	}

	/**
	 * @return the phone
	 */
	public Integer getPhone() {
		return phone;
	}

	/**
	 * @return the mail
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param userid
	 *            the userid to set
	 */
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	/**
	 * @param lastname
	 *            the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	/**
	 * @param surname
	 *            the surname to set
	 */
	public void setSurname(String surname) {
		this.surname = surname;
	}

	/**
	 * @param pointofdelivery
	 *            the pointofdelivery to set
	 */
	public void setPointofdelivery(Boolean pointofdelivery) {
		this.pointofdelivery = pointofdelivery;
	}

	/**
	 * @param deliveryuser
	 *            the deliveryuser to set
	 */
	public void setDeliveryuser(Boolean deliveryuser) {
		this.deliveryuser = deliveryuser;
	}

	/**
	 * @param birthdate
	 *            the birthdate to set
	 */
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	/**
	 * @param phone
	 *            the phone to set
	 */
	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	/**
	 * @param mail
	 *            the mail to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

}
