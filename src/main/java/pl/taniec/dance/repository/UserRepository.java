package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.taniec.dance.model.Users;


public interface UserRepository extends JpaRepository<Users, Long> {
    Users findByUsername(String username);


}
