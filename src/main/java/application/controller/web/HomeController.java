package application.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;

@Controller
public class HomeController {
    @GetMapping(value = {"/","home"})
    public String home(Model model)
    {
        model.addAttribute("vm","Xuan Son");
        return "/home";
    }
}
