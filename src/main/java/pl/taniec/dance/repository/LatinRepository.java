package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.taniec.dance.model.LatinClass;

@Repository
public interface LatinRepository extends JpaRepository<LatinClass,Long> {
}
