package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.dto.UserDto;
import pl.coderslab.charity.service.UserService;

@Controller
@RequestMapping("/application")
public class ApplicationController {

    private final UserService userService;

    public ApplicationController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/register")
    public String showRegistrationForm(Model model) {
        model.addAttribute("user", new UserDto());
        return "registrationForm";
    }

    @PostMapping("/register")
    public String register(@ModelAttribute("user") UserDto userDto) {
        if (userDto.getPassword().equals(userDto.getPassword2())) {
            userService.save(userDto);
            return "redirect:/?registrationSuccess=true";
        }
        return "redirect:/application/register?registrationFailure=true";
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "loginForm";
    }
}
