package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.AnnouncementsFindPartner;

import java.util.List;
import java.util.Optional;


public interface FindPartnerService {
    AnnouncementsFindPartner findByTitle(String title);
    Optional<AnnouncementsFindPartner> findById(Long id);
    List<AnnouncementsFindPartner> getFindPartner();
    void add(AnnouncementsFindPartner findPartner);

    void delete(Long id);
}
