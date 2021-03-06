package pl.taniec.dance.service;

import pl.taniec.dance.model.AdvertisementsSales;

import java.util.List;
import java.util.Optional;

public interface AdvertSelesService {
    AdvertisementsSales findByTitle(String title);
    Optional<AdvertisementsSales> findById(Long id);
    List<AdvertisementsSales> getAdvertSeles();
    void add(AdvertisementsSales advertisementsSales);
    void delete(Long id);
    List<AdvertisementsSales> findAdvertSelesByUserId(Long id);
}
