package pl.taniec.dance.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.Users;
import pl.taniec.dance.service.UserService;

import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/create-user")
    @ResponseBody
    public String createUser() {
        Users user = new Users();
        user.setUsername("aaa");
        user.setPassword("123");
        userService.saveUser(user);
        return "admin";
    }

    @RequestMapping("/add")
    public  String addUser(Model model){
        model.addAttribute("user", new Users());
        return "user/addUser";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveAddUser(@Valid Users user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/addUser";
        }
        userService.add(user);
        userService.saveUser(user);
        return "redirect:/login";
    }
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
    public String security(){
        return "user/security";

    }



//    @RequestMapping("/delete")
//    public String deleteUser(@PathVariable long id){
//        userService.delete(id);
//        return "home";
//    }




}
