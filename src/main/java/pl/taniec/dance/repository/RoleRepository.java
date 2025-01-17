package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.taniec.dance.model.Role;


public interface RoleRepository extends JpaRepository<Role, Integer> {
    Role findByName(String name);

}
