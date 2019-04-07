package application.data.service;

import application.data.model.Rate;
import application.data.repository.RateRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RateService {
    @Autowired
    RateRepository rateRepository;

    public void addRate(Rate rate){
        rateRepository.save(rate);
    }
}
