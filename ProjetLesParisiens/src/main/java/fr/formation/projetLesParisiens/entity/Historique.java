package fr.formation.projetLesParisiens.entity;

import java.io.Serializable;
import java.util.Date;

public class Historique implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer historiqueid;
	private Integer userid;
	private Date date;

	/**
	 * @return the historiqueid
	 */
	public Integer getHistoriqueid() {
		return historiqueid;
	}

	/**
	 * @return the userid
	 */
	public Integer getUserid() {
		return userid;
	}

	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}

	/**
	 * @param historiqueid
	 *            the historiqueid to set
	 */
	public void setHistoriqueid(Integer historiqueid) {
		this.historiqueid = historiqueid;
	}

	/**
	 * @param userid
	 *            the userid to set
	 */
	public void setUserid(Integer userid) {
		this.userid = userid;
	}

	/**
	 * @param date
	 *            the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}

}
