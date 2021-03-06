package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.CategoryDance;
import pl.taniec.dance.repository.CategoryDanceRepository;

import java.util.List;

@Service
public class CategoryDanceServiceImpl implements CategoryDanceService{

    private final CategoryDanceRepository categoryDanceRepository;

    public CategoryDanceServiceImpl(CategoryDanceRepository categoryDanceRepository) {
        this.categoryDanceRepository = categoryDanceRepository;
    }

    @Override
    public List<CategoryDance> getCategoryDance() {
        return categoryDanceRepository.findAll();
    }
}
