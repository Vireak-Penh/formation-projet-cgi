package fr.formation.projetLesParisiens.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Adresse;

public interface AdresseRepository extends JpaRepository<Adresse, Integer> {

}
