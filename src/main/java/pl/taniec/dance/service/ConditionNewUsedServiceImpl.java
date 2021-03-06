package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.ConditionNewUsed;
import pl.taniec.dance.repository.ConditionNewUsedRepository;

import java.util.List;

@Service
public class ConditionNewUsedServiceImpl implements ConditionNewUsedService{

    private final ConditionNewUsedRepository conditionNewUsedRepository;

    public ConditionNewUsedServiceImpl(ConditionNewUsedRepository conditionNewUsedRepository) {
        this.conditionNewUsedRepository = conditionNewUsedRepository;
    }

    @Override
    public List<ConditionNewUsed> getCondition() {
        return conditionNewUsedRepository.findAll();
    }
}
