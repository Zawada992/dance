package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.ConditionNewUsed;
import pl.taniec.dance.repository.ConditionNewUsedRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class ConditionNewUsedServiceImpl implements ConditionNewUsedService{

    private final ConditionNewUsedRepository conditionNewUsedRepository;


    @Override
    public List<ConditionNewUsed> getCondition() {
        return conditionNewUsedRepository.findAll();
    }
}
