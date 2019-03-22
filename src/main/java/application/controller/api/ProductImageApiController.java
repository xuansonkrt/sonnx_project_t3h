package application.controller.api;

import application.data.model.ProductImage;
import application.data.service.ProductImageService;
import application.model.api.BaseApiResult;
import application.model.dto.ProductImageDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Date;

@Controller
@RequestMapping(path = "/api/productImage")
public class ProductImageApiController {

    @Autowired
    ProductImageService productImageService;

    @PostMapping("/update")
    public ResponseEntity<?> update(@Valid @RequestBody ProductImageDTO productImageDTO){
        BaseApiResult result= new BaseApiResult();

        ProductImage productImage= productImageService.findOne(productImageDTO.getId());
        if(productImage==null){
            productImage = new ProductImage();
            productImage.setCreatedDate(new Date());
        }
        productImage.setLink(productImageDTO.getLink());
        productImage.setTitle(productImageDTO.getTitle());
        productImage.setProductId(productImageDTO.getProductId());
        try{
            productImageService.update(productImage);
            result.setMessage("Update success!");
            result.setSuccess(true);
        } catch (Exception e){
            result.setMessage(e.getMessage());
            result.setSuccess(false);
            return ResponseEntity.badRequest().body(result);
        }
        return ResponseEntity.ok(result);
    }
}
