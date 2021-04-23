package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.BallroomClass;
import pl.taniec.dance.repository.BallroomRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class BallroomServiceImpl implements BallroomService{

    private final BallroomRepository ballroomRepository;


    @Override
    public List<BallroomClass> getBallroomClass() {
        return ballroomRepository.findAll();
    }
}
