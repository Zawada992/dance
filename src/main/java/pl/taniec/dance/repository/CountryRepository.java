package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.taniec.dance.model.Country;


public interface CountryRepository extends JpaRepository<Country, Long> {
}
