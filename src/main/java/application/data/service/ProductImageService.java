package application.data.service;

import application.data.model.Color;
import application.data.model.ProductImage;
import application.data.repository.ProductImageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
@Service
public class ProductImageService {
    @Autowired
    ProductImageRepository  productImageRepository;

//    public List<ProductImage> getListImageByProductId(int productId)
//    {
//        return  productImageRepository.getListImageByProductId(productId);
//    }

    public ProductImage findOne(int productImageId){
        return productImageRepository.findOne(productImageId);
    }

    public List<ProductImage> getAll(){
        return productImageRepository.findAll();
    }

    public void update(ProductImage productImage){
        productImageRepository.save(productImage);
    }

    @Transactional
    public void delete(int productImageId){
        productImageRepository.delete(productImageId);
    }


//    public ProductImage getById(Integer productImageId)
//    {
//        return productImageRepository.getById(productImageId);
//    }
}
