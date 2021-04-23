package pl.taniec.dance.controller;

import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.Users;
import pl.taniec.dance.service.PasswordService;
import pl.taniec.dance.service.UserService;

import javax.validation.Valid;

@AllArgsConstructor
@Controller
@RequestMapping("/app/user")
public class UserController {

    private final UserService userService;
    private final PasswordService passwordService;


    @RequestMapping(value = "/edit")
    public String editUser (Model model, Authentication auth){
        Users currentUser = userService.findByNickName(auth.getName());
        Long id = currentUser.getId();
        model.addAttribute("user", userService.get(id));
        return "user/editUser";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String saveEditUser (@Valid @ModelAttribute ("user") Users user, BindingResult result){
        if(result.hasErrors()){
            return "user/editUser";
        }
        userService.add(user);
        return "redirect:/home";
    }

    @RequestMapping(value = "/security")
    public String userChangePassGet( Model model, Authentication auth){
        Users currentUser = userService.findByNickName(auth.getName());
        Long id = currentUser.getId();
        model.addAttribute("user", userService.get(id));
        return "user/security";
    }

    @PostMapping("/security")
    public String userChangePassPost(
            Authentication auth,
            @RequestParam(name = "oldPassword") String oldPassword,
            @RequestParam(name = "newPassword") String newPassword,
            @RequestParam(name = "confirmPassword") String confirmPassword,
            Model model
    ) {
        Users user = userService.findByNickName(auth.getName());
        if(passwordService.checkOldPassword(user, oldPassword) && passwordService.isPassword(newPassword, confirmPassword)) {
            user.setPassword(newPassword);
            userService.saveUserPassword(user);
            return "redirect:/";
        }else {
            model.addAttribute("user", user);
            return "user/security";
        }
    }

}
