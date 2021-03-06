package pl.taniec.dance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.taniec.dance.model.AdvertisementsSales;
import pl.taniec.dance.model.AnnouncementsFindPartner;
import pl.taniec.dance.service.AdvertSelesService;
import pl.taniec.dance.service.FindPartnerService;
import pl.taniec.dance.service.UserService;

import java.util.List;

@Controller
public class HomeController {
    private final AdvertSelesService advertSelesService;
    private final FindPartnerService findPartnerService;
    private  final UserService userService;

    public HomeController(AdvertSelesService advertSelesService, FindPartnerService findPartnerService, UserService userService) {
        this.advertSelesService = advertSelesService;
        this.findPartnerService = findPartnerService;
        this.userService = userService;
    }

    @RequestMapping("/")
    public String hello(){
        return "home";
    }


    //----------AdvertSeles----------
    @GetMapping("/sell/showAll")
    public String showAdvertSelesAll(Model model){
        List<AdvertisementsSales> advertisementsSales = advertSelesService.getAdvertSeles();
        model.addAttribute("advertSeles", advertisementsSales);
        return "sell/showAdvSellAll";
    }
    @GetMapping("/sell/show/{id}")
    public String showAdvertSeles(@PathVariable("id") Long id, Model model){
        AdvertisementsSales sales = advertSelesService.findById(id).get();
        model.addAttribute("advertSeles", sales);
        return "sell/detailsSells";
    }


    //----------FindPartner----------
    @GetMapping("/findPartner/showAll")
    public String showAnnFindPartnerAll(Model model){
        List<AnnouncementsFindPartner> findPartnerList = findPartnerService.getFindPartner();
        model.addAttribute("findPartner", findPartnerList);
        return "findPartner/showFindPartnerAll";
    }

    @GetMapping("/findPartner/show/{id}")
    public String showAnnFindPartner(@PathVariable ("id") Long id, Model model){
        AnnouncementsFindPartner findPartner = findPartnerService.findById(id).get();
        model.addAttribute("findPartner", findPartner);
        return "findPartner/detailsFindPartner";

    }

    //-------------User-------------
}
