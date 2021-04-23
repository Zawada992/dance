package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.taniec.dance.model.AnnouncementsFindPartner;

import java.util.List;


public interface FindPartnerRepository extends JpaRepository<AnnouncementsFindPartner ,Long> {
    AnnouncementsFindPartner findByTitle(String title);
    List<AnnouncementsFindPartner> findAllByUserId(Long id);

}
