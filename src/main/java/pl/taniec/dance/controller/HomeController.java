package pl.taniec.dance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String hello(){
        return "home";
    }

    @GetMapping("/admin/hello")
    @ResponseBody
    public String about() { return "Here you can find some details for logged users"; }


}
