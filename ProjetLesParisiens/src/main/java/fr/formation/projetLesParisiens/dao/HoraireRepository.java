package fr.formation.projetLesParisiens.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Horaire;

public interface HoraireRepository extends JpaRepository<Horaire, Integer> {

}
