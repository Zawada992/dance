package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.BallroomClass;
import pl.taniec.dance.repository.BallroomRepository;

import java.util.List;

@Service
public class BallroomServiceImpl implements BallroomService{

    private final BallroomRepository ballroomRepository;

    public BallroomServiceImpl(BallroomRepository ballroomRepository) {
        this.ballroomRepository = ballroomRepository;
    }


    @Override
    public List<BallroomClass> getBallroomClass() {
        return ballroomRepository.findAll();
    }
}
