package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.taniec.dance.model.AnnouncementsFindPartner;

@Repository
public interface FindPartnerRepository extends JpaRepository<AnnouncementsFindPartner ,Long> {
    AnnouncementsFindPartner findByTitle(String title);

}
