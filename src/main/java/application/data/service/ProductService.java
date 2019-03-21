package application.data.service;

import application.data.model.Product;
import application.data.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    public List<Product> getAll(){
        return productRepository.findAll();
    }

    public Page<Product> getListProductByCategoryOrProductNameContaining(Pageable pageable, Integer categoryId, String productName){
        return productRepository.getListProductByCategoryOrProductNameContaining(pageable,categoryId,productName);
    }
}
