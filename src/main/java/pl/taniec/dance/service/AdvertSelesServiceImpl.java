package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.AdvertisementsSales;
import pl.taniec.dance.repository.AdvertSelesRepository;

import java.util.List;
import java.util.Optional;

@Service
public class AdvertSelesServiceImpl implements AdvertSelesService{

    private final AdvertSelesRepository advertSelesRepository;

    public AdvertSelesServiceImpl(AdvertSelesRepository advertSelesRepository) {
        this.advertSelesRepository = advertSelesRepository;
    }

    @Override
    public AdvertisementsSales findByTitle(String title) {
        return advertSelesRepository.findByTitle(title);
    }

    @Override
    public Optional<AdvertisementsSales> findById(Long id) {
        return advertSelesRepository.findById(id);
    }

    @Override
    public List<AdvertisementsSales> getAdvertSeles() {
        return advertSelesRepository.findAll();
    }

    @Override
    public void add(AdvertisementsSales advertisementsSales) {
        advertSelesRepository.save(advertisementsSales);
    }

    @Override
    public void delete(Long id) {
    advertSelesRepository.deleteById(id);
    }

    @Override
    public List<AdvertisementsSales> findAdvertSelesByUserId(Long id) {
        return advertSelesRepository.findAllByUserId(id);
    }
}
