package pl.taniec.dance.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.taniec.dance.model.BallroomClass;



public interface BallroomRepository extends JpaRepository<BallroomClass,Long> {
}
