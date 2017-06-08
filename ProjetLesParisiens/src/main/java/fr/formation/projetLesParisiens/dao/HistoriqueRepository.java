package fr.formation.projetLesParisiens.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Historique;

public interface HistoriqueRepository extends JpaRepository<Historique, Integer> {

}
