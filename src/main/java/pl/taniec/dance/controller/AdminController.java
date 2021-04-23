package pl.taniec.dance.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.Users;
import pl.taniec.dance.service.UserService;

import javax.validation.Valid;
import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/admin/user")
public class AdminController {

    private final UserService userService;


    @GetMapping("/all")
    public String showAllUsers(Model model) {
        List<Users> users = userService.getUsers();
        model.addAttribute("user", users);
        return "user/allUser";
    }

    @RequestMapping(value = "/edit/{id}")
    public String editUser (Model model, @PathVariable Long id){
        model.addAttribute("user", userService.get(id));
        return "user/editUserAdmin";
    }
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String saveEditUser (@Valid @ModelAttribute("user") Users user, @PathVariable Long id, BindingResult result){
        if(result.hasErrors()){
            return "user/editUserAdmin";
        }
        userService.add(user);
        return "redirect:/admin/user/all";
    }

    @RequestMapping("/delete/{id}")
    public String deleteUser(@PathVariable long id){
        userService.delete(id);
        return "redirect:/admin/user/all";
    }
}
