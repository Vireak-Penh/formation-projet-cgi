package fr.formation.projetLesParisiens.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.projetLesParisiens.entity.Horaire;

public interface HoraireRepository extends JpaRepository<Horaire, Integer> {

	public List<Horaire> findByUserid(Integer userid);

	@Transactional
	@Modifying
	@Query("UPDATE Horaire u SET u.day = ?2, u.morning = ?3, u.afternoon = ?4 WHERE u.scheduleid= ?1")
	public int updateTable(Integer scheduleid, String day, Boolean morning, Boolean afternoon);
}
