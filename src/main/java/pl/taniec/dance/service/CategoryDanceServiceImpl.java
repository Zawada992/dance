package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.CategoryDance;
import pl.taniec.dance.repository.CategoryDanceRepository;

import java.util.List;

@AllArgsConstructor
@Service
public class CategoryDanceServiceImpl implements CategoryDanceService{

    private final CategoryDanceRepository categoryDanceRepository;


    @Override
    public List<CategoryDance> getCategoryDance() {
        return categoryDanceRepository.findAll();
    }
}
