package pl.taniec.dance.controller;

import lombok.AllArgsConstructor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.taniec.dance.model.AnnouncementsFindPartner;
import pl.taniec.dance.model.Users;
import pl.taniec.dance.service.*;

import javax.validation.Valid;
import java.util.List;

@AllArgsConstructor
@Controller
@RequestMapping("/app/findPartner")
public class FindPartnerController {

    private final FindPartnerService findPartnerService;
    private final LatinService latinService;
    private final BallroomService ballroomService;
    private final GenderService genderService;
    private final CountryService countryService;
    private final CategoryDanceService categoryDanceService;
    private final UserService userService;


    @GetMapping("/showAllMyAd")
    public String showAnnFindPartnerAll(Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users currentUser = userService.findByNickName(auth.getName());
        Long id = currentUser.getId();
        List<AnnouncementsFindPartner> findPartnerList = findPartnerService.findFindPartnerByUserId(id);
        model.addAttribute("findPartner", findPartnerList);
        return "findPartner/showAllMyAdFindPartner";
    }


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addAnnFindPartner(Model model) {
        model.addAttribute("findPartner", new AnnouncementsFindPartner());
        model.addAttribute("latin", latinService.getLatinClass());
        model.addAttribute("ballroom", ballroomService.getBallroomClass());
        model.addAttribute("gender", genderService.getGender());
        model.addAttribute("country", countryService.getCountry());
        model.addAttribute("categoryDance", categoryDanceService.getCategoryDance());

        return "findPartner/findPartner";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveAddAnnFindPartner(@Valid @ModelAttribute("findPartner")
                                                AnnouncementsFindPartner findPartner,
                                        BindingResult result, Authentication authentication) {
        if (result.hasErrors()) {
            return "findPartner/findPartner";
        }
        Users user = userService.findByNickName(authentication.getName());
        findPartner.setUser(user);
        findPartnerService.add(findPartner);
        return "redirect:/findPartner/showAll";
    }

    @RequestMapping("/delete")
    public String deleteUser(@PathVariable long id) {
        findPartnerService.delete(id);
        return "redirect:/app/findPartner/showAllMyAd";
    }

}
