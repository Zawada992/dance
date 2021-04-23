package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.Country;
import pl.taniec.dance.repository.CountryRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class CountryServiceImpl implements CountryService{

    private final CountryRepository countryRepository;



    @Override
    public List<Country> getCountry() {
        return countryRepository.findAll();
    }
}
