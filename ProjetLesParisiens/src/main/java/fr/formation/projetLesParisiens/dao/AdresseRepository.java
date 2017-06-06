package fr.formation.projetLesParisiens.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.projetLesParisiens.entity.Adresse;

public interface AdresseRepository extends JpaRepository<Adresse, Integer> {

	public List<Adresse> findByUserid(Integer userid);

	@Transactional
	@Modifying
	@Query("UPDATE Adresse u SET u.channelnumber = ?2, u.street = ?3, u.postalcode = ?4, u.city = ?5 WHERE u.userid= ?1")
	public int updateTable(Integer userid, Integer channelnumber, String street, Integer postalcode, String city);

	public List<Adresse> findByPostalcode(Integer postalcode);

}
