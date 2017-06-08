package fr.formation.projetLesParisiens.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.projetLesParisiens.entity.Account;

public interface AccountRepository extends JpaRepository<Account, Integer> {

	Account findOneByUsername(final String username);
}
