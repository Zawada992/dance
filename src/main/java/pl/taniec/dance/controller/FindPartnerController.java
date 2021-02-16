package pl.taniec.dance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import pl.taniec.dance.model.AnnouncementsFindPartner;
import pl.taniec.dance.service.FindPartnerService;

import java.util.List;
import java.util.Optional;

@Controller
public class FindPartnerController {

    private final FindPartnerService findPartnerService;

    public FindPartnerController(FindPartnerService findPartnerService) {
        this.findPartnerService = findPartnerService;
    }


    @GetMapping("/showAll")
    public String showFindPartnerAll(Model model){
        List<AnnouncementsFindPartner> findPartnerList = findPartnerService.getFindPartner();
        model.addAttribute("findPartner", findPartnerList);
        return "showFindPartnerAll";
    }

    @GetMapping("/show")
    public String showFindPartner(@PathVariable Long id, Model model){
        Optional<AnnouncementsFindPartner> findPartner = findPartnerService.findById(id);
        model.addAttribute("findPartner", id);
//        return "detailsFindPartner";
        return "test";
    }

}
