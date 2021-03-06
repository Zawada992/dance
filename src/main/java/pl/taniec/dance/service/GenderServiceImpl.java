package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.Gender;
import pl.taniec.dance.repository.GenderRepository;

import java.util.List;

@Service
public class GenderServiceImpl implements GenderService {

    private final GenderRepository genderRepository;

    public GenderServiceImpl(GenderRepository genderRepository) {
        this.genderRepository = genderRepository;
    }


    @Override
    public List<Gender> getGender() {
        return genderRepository.findAll();
    }


}
