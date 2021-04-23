package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.LatinClass;
import pl.taniec.dance.repository.LatinRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class LatinServiceImpl implements LatinService{

    private final LatinRepository latinRepository;


    @Override
    public List<LatinClass> getLatinClass() {
        return latinRepository.findAll();
    }
}
