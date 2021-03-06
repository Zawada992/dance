package pl.taniec.dance.service;

import org.springframework.stereotype.Service;
import pl.taniec.dance.model.AnnouncementsFindPartner;
import pl.taniec.dance.repository.FindPartnerRepository;

import java.util.List;
import java.util.Optional;

@Service
public class FindPartnerServiceImpl implements FindPartnerService {


    private final FindPartnerRepository findPartnerRepository;


    public FindPartnerServiceImpl(FindPartnerRepository findPartnerRepository) {
        this.findPartnerRepository = findPartnerRepository;
    }


    @Override
    public AnnouncementsFindPartner findByTitle(String title) {
        return findPartnerRepository.findByTitle(title);
    }

    @Override
    public Optional<AnnouncementsFindPartner> findById(Long id) {
        return findPartnerRepository.findById(id);
    }

    @Override
    public List<AnnouncementsFindPartner> getFindPartner() {
        return findPartnerRepository.findAll();
    }


    @Override
    public void add(AnnouncementsFindPartner findPartner) {
        findPartnerRepository.save(findPartner);
    }

    @Override
    public void delete(Long id) {
        findPartnerRepository.deleteById(id);
    }

    @Override
    public List<AnnouncementsFindPartner> findFindPartnerByUserId(Long id) {
        return findPartnerRepository.findAllByUserId(id);
    }
}
