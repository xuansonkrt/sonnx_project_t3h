package application.controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(path = "/user")
public class UserController {


    @GetMapping(value = {"/sign-in"})
    public String signIn(Model model)
    {
        model.addAttribute("vm","Xuan Son");
        return "/sign-in";
    }


    @GetMapping(value = {"/sign-up"})
    public String signUp(Model model)
    {
        model.addAttribute("vm","Xuan Son");
        return "/sign-up";
    }
}
