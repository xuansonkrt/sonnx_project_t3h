package application.data.service;

import application.data.model.ProductEntity;
import application.data.repository.ProductEntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductEntityService {
    @Autowired
    ProductEntityRepository productEntityRepository;

    public void updateMulti(List<ProductEntity> productEntityList)
    {
        productEntityRepository.save(productEntityList);
    }
    public void update(ProductEntity productEntityList)
    {
        productEntityRepository.save(productEntityList);
    }
}
