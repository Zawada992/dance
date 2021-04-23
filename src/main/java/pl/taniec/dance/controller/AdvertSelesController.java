package pl.taniec.dance.controller;

import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.AdvertisementsSales;
import pl.taniec.dance.model.Users;
import pl.taniec.dance.service.AdvertSelesService;
import pl.taniec.dance.service.ConditionNewUsedService;
import pl.taniec.dance.service.CountryService;
import pl.taniec.dance.service.UserService;

import javax.validation.Valid;
import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/app/sell")
public class AdvertSelesController {

    private final AdvertSelesService advertSelesService;
    private final CountryService countryService;
    private final ConditionNewUsedService conditionNewUsedService;
    private final UserService userService;


    @GetMapping("/showAllMyAd")
    public String showAdvertSelesAll(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users currentUser = userService.findByNickName(auth.getName());
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
        Users user = userService.findByNickName(authentication.getName());
        sell.setUser(user);
        advertSelesService.add(sell);
        return "redirect:/sell/showAll";
    }

    @RequestMapping("/delete")
    public String deleteSell(@PathVariable Long id) {
        advertSelesService.delete(id);
        return "redirect:/app/sell/showAllMyAd";

    }

}
