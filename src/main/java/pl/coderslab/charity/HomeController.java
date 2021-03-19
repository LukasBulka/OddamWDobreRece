package pl.coderslab.charity;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.charity.repository.InstitutionRepository;


@Controller
@RequestMapping("/")
public class HomeController {

    private final InstitutionRepository institutionRepository;

    public HomeController(InstitutionRepository institutionRepository) {
        this.institutionRepository = institutionRepository;
    }


    @GetMapping("")
    public String homeAction(Model model){
        return "index";
    }

    @GetMapping("/about")
    public String aboutAction(){
        return "about";
    }

    @GetMapping("/organizations")
    public String whoAction(Model model){
        model.addAttribute("institutions", institutionRepository.findAll());
        return "organizations";
    }

    @GetMapping("/explanation")
    public String whatIsItAllAboutAction(){
        return "explanation";
    }

    @GetMapping("/contact")
    public String contactAction(){
        return "contact";
    }
}
