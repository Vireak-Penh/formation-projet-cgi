package fr.formation.projetLesParisiens.entity;

import java.io.Serializable;

public class Horaire implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer userid;
	private Integer scheduleid;
	private String day;
	private Boolean morning;
	private String afternoon;

	/**
	 * @return the userid
	 */
	public Integer getUserid() {
		return userid;
	}

	/**
	 * @return the scheduleid
	 */
	public Integer getScheduleid() {
		return scheduleid;
	}

	/**
	 * @param userid
	 *            the userid to set
	 */
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	/**
	 * @param scheduleid
	 *            the scheduleid to set
	 */
	public void setScheduleid(Integer scheduleid) {
		this.scheduleid = scheduleid;
	}

	/**
	 * @return the day
	 */
	public String getDay() {
		return day;
	}

	/**
	 * @return the morning
	 */
	public Boolean getMorning() {
		return morning;
	}

	/**
	 * @return the afternoon
	 */
	public String getAfternoon() {
		return afternoon;
	}

	/**
	 * @param day
	 *            the day to set
	 */
	public void setDay(String day) {
		this.day = day;
	}

	/**
	 * @param morning
	 *            the morning to set
	 */
	public void setMorning(Boolean morning) {
		this.morning = morning;
	}

	/**
	 * @param afternoon
	 *            the afternoon to set
	 */
	public void setAfternoon(String afternoon) {
		this.afternoon = afternoon;
	}

}
