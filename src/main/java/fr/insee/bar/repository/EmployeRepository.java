package fr.insee.bar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import fr.insee.bar.model.Employe;
import fr.insee.bar.model.Role;

public interface EmployeRepository extends JpaRepository<Employe, Short>, JpaSpecificationExecutor<Employe> {
	Employe findFirstByRole(Role role);
}
