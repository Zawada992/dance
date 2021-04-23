package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.taniec.dance.model.AdvertisementsSales;

import java.util.List;


public interface AdvertSelesRepository extends JpaRepository <AdvertisementsSales, Long> {
    AdvertisementsSales findByTitle(String title);
    List<AdvertisementsSales> findAllByUserId(Long id);
}
