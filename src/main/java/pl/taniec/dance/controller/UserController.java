package pl.taniec.dance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.User;
import pl.taniec.dance.service.UserService;

import javax.validation.Valid;

@Controller
//@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/create-user")
    @ResponseBody
    public String createUser() {
        User user = new User();
        user.setNickName("aaa");
        user.setPassword("123");
        userService.saveUser(user);
        return "admin";
    }

    @RequestMapping("/add")
    public  String addUser(Model model){
        model.addAttribute("user", new User());
        return "addUser";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveAddUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "addUser";
        }
        userService.add(user);
        userService.saveUser(user);
//        return "redirect:/user/account";
        return "redirect:/user";
    }

    @RequestMapping("/delete")
    public String deleteUser(@PathVariable long id){
        userService.delete(id);
//        return "redirect:/admin/books/all";
        return "redirect:/";

    }




}
