package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.Country;
import pl.taniec.dance.repository.CountryRepository;

import java.util.List;

@Service
public class CountryServiceImpl implements CountryService{

    private final CountryRepository countryRepository;

    public CountryServiceImpl(CountryRepository countryRepository) {
        this.countryRepository = countryRepository;
    }


    @Override
    public List<Country> getCountry() {
        return countryRepository.findAll();
    }
}
