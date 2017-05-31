package fr.formation.projetLesParisiens.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

	public List<Utilisateur> findByEmail(String email);
}
