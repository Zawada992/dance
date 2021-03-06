package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.LatinClass;
import pl.taniec.dance.repository.LatinRepository;

import java.util.List;

@Service
public class LatinServiceImpl implements LatinService{

    private final LatinRepository latinRepository;

    public LatinServiceImpl(LatinRepository latinRepository) {
        this.latinRepository = latinRepository;
    }

    @Override
    public List<LatinClass> getLatinClass() {
        return latinRepository.findAll();
    }
}
