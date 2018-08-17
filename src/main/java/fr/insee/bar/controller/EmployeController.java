package fr.insee.bar.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import fr.insee.bar.model.Employe;
import fr.insee.bar.model.Role;
import fr.insee.bar.repository.EmployeRepository;
import fr.insee.bar.service.EmployeService;

@Controller
public class EmployeController {

	@Autowired
	private EmployeService employeService;

	@Autowired
	private EmployeRepository employeRepository;

	@GetMapping("/employe")
	public String changeEmploye(Employe loggedEmploye, HttpSession session) {
		System.out.println(session.getId());
		Role role = new Role();
		short idRole = employeService.estResponsable(loggedEmploye) ? EmployeService.SERVEUR : EmployeService.RESPONSABLE;
		role.setId(idRole);
		Employe newEmploye = employeRepository.findFirstByRole(role);
		session.setAttribute("employe", newEmploye);
		return "redirect:/accueil";
	}
}
