package fr.formation.projetLesParisiens.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.projetLesParisiens.entity.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

	public List<Utilisateur> findByEmail(String email);

	// @Query("UPDATE user u SET u.lastname = ?2, u.surname = ?3,
	// u.pointofdelivery = ?4, u.deliveryuser = ?5, u.email = ?6, u.phone = ?7
	// WHERE u.userid= ?1; ")
	// void updateTable(Integer userid, String lastname, String surname, Boolean
	// pointofdelivery, Boolean deliveryuser,
	// String email, Integer phone);

	@Transactional
	@Modifying
	@Query("UPDATE Utilisateur u SET u.surname = ?2, u.lastname = ?3, u.pointofdelivery= ?4, u.deliveryuser = ?5, u.email = ?6, u.phone = ?7 WHERE u.userid= ?1")
	public int updateTable(Integer userid, String surname, String lastname, Boolean pointofdelivery,
			Boolean deliveryuser, String email, Integer phone);
}
