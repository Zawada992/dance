package pl.taniec.dance.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.AdvertisementsSales;
import pl.taniec.dance.model.User;
import pl.taniec.dance.service.AdvertSelesService;
import pl.taniec.dance.service.ConditionNewUsedService;
import pl.taniec.dance.service.CountryService;
import pl.taniec.dance.service.UserService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/app/sell")
public class AdvertSelesController {

    private final AdvertSelesService advertSelesService;
    private final CountryService countryService;
    private final ConditionNewUsedService conditionNewUsedService;
    private final UserService userService;

    public AdvertSelesController(AdvertSelesService advertSelesService, CountryService countryService, ConditionNewUsedService conditionNewUsedService, UserService userService) {
        this.advertSelesService = advertSelesService;
        this.countryService = countryService;
        this.conditionNewUsedService = conditionNewUsedService;
        this.userService = userService;
    }

//    @GetMapping("/showAll")
//    public String showAdvertSelesAll(Model model){
//        List<AdvertisementsSales> advertisementsSales = advertSelesService.getAdvertSeles();
//        model.addAttribute("advertSeles", advertisementsSales);
//        return "sell/showAdvSellAll";
//    }
//    @GetMapping("/show/{id}")
//    public String showAnnFindPartner(@PathVariable("id") Long id, Model model){
//        AdvertisementsSales sales = advertSelesService.findById(id).get();
//        model.addAttribute("advertSeles", sales);
//        return "sell/detailsSells";
//
//    }

    @GetMapping("/showAllMyAd")
    public String showAdvertSelesAll(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User currentUser = userService.findByNickName(auth.getName());
        Long id = currentUser.getId();
        List<AdvertisementsSales> advertisementsSales = advertSelesService.findAdvertSelesByUserId(id);
        model.addAttribute("advertSeles", advertisementsSales);
        return "sell/showAdvSellAllMyAd";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addAdvertSell(Model model) {
        model.addAttribute("sell", new AdvertisementsSales());
        model.addAttribute("country", countryService.getCountry());
        model.addAttribute("condition", conditionNewUsedService.getCondition());


        return "sell/addSell";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveAddAdvertSell(@Valid @ModelAttribute("sell")
                                            AdvertisementsSales sell,
                                    BindingResult result, Authentication authentication) {
        if (result.hasErrors()) {
            return "sell/addSell";
        }
        User user = userService.findByNickName(authentication.getName());
        sell.setUser(user);
        advertSelesService.add(sell);
        return "redirect:/sell/showAll";
    }

    @RequestMapping("/delete")
    public String deleteSell(@PathVariable Long id) {
        advertSelesService.delete(id);
        return "redirect:/app/sell/";

    }

}
