package fr.formation.projetLesParisiens.entity;

import java.io.Serializable;

public class Adresse implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer userid;
	private Integer adressid;
	private Integer channelnumber;
	private String street;
	private Integer postalcode;
	private String city;

	/**
	 * @return the userid
	 */
	public Integer getUserid() {
		return userid;
	}

	/**
	 * @return the adressid
	 */
	public Integer getAdressid() {
		return adressid;
	}

	/**
	 * @param userid
	 *            the userid to set
	 */
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	/**
	 * @param adressid
	 *            the adressid to set
	 */
	public void setAdressid(Integer adressid) {
		this.adressid = adressid;
	}

	/**
	 * @return the channelnumber
	 */
	public Integer getChannelnumber() {
		return channelnumber;
	}

	/**
	 * @return the street
	 */
	public String getStreet() {
		return street;
	}

	/**
	 * @return the postalcode
	 */
	public Integer getPostalcode() {
		return postalcode;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param channelnumber
	 *            the channelnumber to set
	 */
	public void setChannelnumber(Integer channelnumber) {
		this.channelnumber = channelnumber;
	}

	/**
	 * @param street
	 *            the street to set
	 */
	public void setStreet(String street) {
		this.street = street;
	}

	/**
	 * @param postalcode
	 *            the postalcode to set
	 */
	public void setPostalcode(Integer postalcode) {
		this.postalcode = postalcode;
	}

	/**
	 * @param city
	 *            the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

}
