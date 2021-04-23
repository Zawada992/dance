package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.Gender;
import pl.taniec.dance.repository.GenderRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class GenderServiceImpl implements GenderService {

    private final GenderRepository genderRepository;




    @Override
    public List<Gender> getGender() {
        return genderRepository.findAll();
    }


}
