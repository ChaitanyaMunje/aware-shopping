package pl.kupujswiadomie.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import pl.kupujswiadomie.bean.LoginData;
import pl.kupujswiadomie.bean.SessionManager;
import pl.kupujswiadomie.entity.Product;
import pl.kupujswiadomie.entity.User;
import pl.kupujswiadomie.repository.ProductRepository;
import pl.kupujswiadomie.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private ProductRepository productRepo;

	@GetMapping("/register")
	public String register(Model m) {
		m.addAttribute("user", new User());
		return "user/register";
	}

	@PostMapping("/register")
	public String registerPost(@Valid @ModelAttribute User user, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "redirect:/register";
		}
		this.userRepo.save(user);
		if(user.getId() == 1) {
			user.setAdmin(true);
			this.userRepo.save(user);
		}
		return "redirect:/";
	}
	
	@GetMapping("/rules")
	public String rules() {
		return "user/rules";
	}

	@GetMapping("/login")
	public String login(Model m) {
		m.addAttribute("loginData", new LoginData());
		return "user/login";
	}

	@PostMapping("/login")
	public String loginPost(@ModelAttribute LoginData loginData, Model m) {
		User u = this.userRepo.findOneByUsername(loginData.getUsername());
		if (u != null && u.checkPassword(loginData.getPassword())) {
			HttpSession s = SessionManager.session();
			s.setAttribute("user", u);
			return "redirect:/";
		}
		m.addAttribute("message", "Wprowadz poprawne dane");
		return "user/login";
	}
	
	@GetMapping("/logout")
	public String logout(Model m) {
		HttpSession s = SessionManager.session();
		s.invalidate();
		
		m.addAttribute("loginData", new LoginData());
		return "redirect:/";
	}
	
	@GetMapping("/{username}")
	public String showProfile(@PathVariable String username, Model m) {
		User user = this.userRepo.findOneByUsername(username);
		List<Product> userProducts = this.productRepo.findAllByCreatedBy(user);
		m.addAttribute("user", user);
		m.addAttribute("products", userProducts);
		return "user/profile";
	}
	
	@GetMapping("/user/edit/{id}")
	@Transactional
	public String editUser(Model m, @PathVariable int id) {
		HttpSession s = SessionManager.session();
		User editUser = this.userRepo.findById(id);
		User activeUser = (User) s.getAttribute("user");
		if (activeUser.getUsername().equals(editUser.getUsername())) {
			m.addAttribute("user", editUser);
			return "user/register";
		}
		
		return "user/edit";
	}
	
	@PostMapping("/user/edit/{id}")
	public String editPost(@Valid @ModelAttribute User user, BindingResult bindingResult, Model m) {
		if (bindingResult.hasErrors()) {
			return "user/register";
		}
		this.userRepo.save(user);
		m.addAttribute("message", "Edytowano");
		return "redirect:/";
	}

	@GetMapping("/delete/{id}")
	@Transactional
	public String delete(Model m, @PathVariable int id) {
		HttpSession s = SessionManager.session();
		User deleteUser = this.userRepo.findById(id);
		User activeUser = (User) s.getAttribute("user");
		if (activeUser.getUsername().equals(deleteUser.getUsername()) || activeUser.isAdmin() == true) {
			this.userRepo.delete(deleteUser);
			m.addAttribute("message", "Usunięto użytkownika.");
			return "redirect:/";
		} else {
			m.addAttribute("message", "Nie możesz usunąć tego użytkownika!");
			return "redirect:/";
		}
	}

}
