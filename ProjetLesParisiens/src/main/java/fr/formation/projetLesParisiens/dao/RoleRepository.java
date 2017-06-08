package fr.formation.projetLesParisiens.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer> {

	Role findOneById(final Integer id);
}