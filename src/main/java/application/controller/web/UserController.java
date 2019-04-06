package application.controller.web;

import application.constant.StatusRegisterUserEnum;
import application.data.model.User;
import application.data.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping(path = "/user")
public class UserController {
    @Autowired
    UserService userService;

    @GetMapping(value = {"/sign-in"})
    public String signIn(Model model)
    {
        model.addAttribute("vm","Xuan Son");
        return "/sign-in";
    }


    @GetMapping(value = {"/sign-up"})
    public String signUp(Model model)
    {
        model.addAttribute("user", new User());
        return "/sign-up";
    }

    @RequestMapping(path="/register", method = RequestMethod.POST)
    public String registerNewUser(@Valid @ModelAttribute("user")User user){
        StatusRegisterUserEnum status =userService.registerNewUser(user);
        if(status==StatusRegisterUserEnum.Existed_Username)
            return "redirect:/user/sign-up?exit_username";

        return "redirect:/user/sign-in";
    }
}
