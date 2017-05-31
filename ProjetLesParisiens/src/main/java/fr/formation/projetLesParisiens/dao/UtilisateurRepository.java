package fr.formation.projetLesParisiens.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Integer> {

}
