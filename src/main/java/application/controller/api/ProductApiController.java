package application.controller.api;

import application.data.model.Category;
import application.data.model.Product;
import application.data.model.Promotion;
import application.data.service.CategoryService;
import application.data.service.ProductService;
import application.data.service.PromotionService;
import application.data.service.SupplyService;
import application.model.api.BaseApiResult;
import application.model.api.DataApiResult;
import application.model.dto.ProductDTO;
import application.model.viewmodel.ProductVM;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

@RestController
@RequestMapping(path = "/api/product")
public class ProductApiController {

    private static final Logger logger = LogManager.getLogger(ProductApiController.class);

    @Autowired
    private ProductService productService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private SupplyService supplyService;

    @Autowired
    private PromotionService promotionService;

    @PostMapping(value = "/create")
    public BaseApiResult createProduct(@RequestBody ProductDTO dto){
        DataApiResult result = new DataApiResult();

        try {
            Product product = new Product();
            product.setName(dto.getName());
            product.setShortDesc(dto.getShortDesc());
            product.setPrice(dto.getPrice());
            product.setMainImage(dto.getMainImage());
            product.setCategory(categoryService.findOne(dto.getCategoryId()));
            product.setCreatedDate(new Date());
            product.setSupplyId(dto.getSupplyId());
            product.setCategoryId(dto.getCategoryId());
            product.setPromotion(promotionService.findOne(dto.getPromotionId()));

            productService.addNewProduct(product);
            result.setData(product.getId());
            result.setMessage("Save product successfully: " + product.getId());
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }

    @PostMapping("/update/{productId}")
    public BaseApiResult updateProduct(@PathVariable int productId,
                                       @RequestBody ProductDTO dto) {
        BaseApiResult result = new BaseApiResult();

        try {
            Product product = productService.findOne(productId);
            product.setName(dto.getName());
            product.setShortDesc(dto.getShortDesc());
            product.setPrice(dto.getPrice());
            product.setMainImage(dto.getMainImage());
            product.setCategory(categoryService.findOne(dto.getCategoryId()));
            product.setCreatedDate(new Date());
            product.setSupplyId(dto.getSupplyId());
            product.setSupply(supplyService.findOne(dto.getSupplyId()));
            product.setCategoryId(dto.getCategoryId());
            product.setPromotion(promotionService.findOne(dto.getPromotionId()));
            productService.addNewProduct(product);
            result.setSuccess(true);
            result.setMessage("Update product successfully");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }

        return result;
    }


    @GetMapping("/detail/{productId}")
    public BaseApiResult detailMaterial(@PathVariable int productId){
        DataApiResult result= new DataApiResult();

        try {
            Product productEntity = productService.findOne(productId);
            if(productEntity == null) {
                result.setSuccess(false);
                result.setMessage("Can't find this product");
            } else {
                ProductDTO dto = new ProductDTO();
                dto.setId(productEntity.getId());
                if(productEntity.getCategory() != null) {
                    dto.setCategoryId(productEntity.getCategory().getId());
                }

                if(productEntity.getSupply() != null) {
                    dto.setSupplyId(productEntity.getSupply().getId());
                }

                if(productEntity.getPromotion() != null) {
                    dto.setPromotionId(productEntity.getPromotion().getId());
                }
                dto.setMainImage(productEntity.getMainImage());
                dto.setName(productEntity.getName());
                dto.setPrice(productEntity.getPrice());
                dto.setShortDesc(productEntity.getShortDesc());
                dto.setCreatedDate(new Date());
                result.setSuccess(true);
                result.setData(dto);
            }
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }

        return result;
    }


    @PostMapping(value="/delete/{productId}") //params có/không => tùy
    public @ResponseBody BaseApiResult delete (@PathVariable int productId){
        BaseApiResult result= new BaseApiResult();
        try {
            productService.deleteProduct(productId);
            result.setSuccess(true);
            result.setMessage("Delete product successfully");

        }catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }

        return result;
    }

    @GetMapping(value = "/getAllSearch")
    public String getAllSearch(Model model,
                                      @Valid @ModelAttribute("productname") ProductDTO productName,
                                      @RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                                      @RequestParam(name = "size", required = false, defaultValue = "8") Integer size,
                                      @RequestParam(name = "categoryId", required = false, defaultValue = "") Integer categoryId,
                                      @RequestParam(name = "supplyId", required = false, defaultValue = "") Integer supplyId){
        DataApiResult result= new DataApiResult();



        return "/admin/admin-product";
    }


    @PostMapping("/listSearch")
    public BaseApiResult getList(@RequestBody String productName){
        DataApiResult result= new DataApiResult();

        try {
            List<Product> productList= productService.getListProductByName(productName);
            if(productList == null) {
                result.setSuccess(false);
                result.setMessage("Can't find this product");
            } else {
                List<ProductVM> productVMList = new ArrayList<>();
                for (Product product : productList) {
                    ProductVM dto = new ProductVM();
                    dto.setId(product.getId());
                    dto.setName(product.getName());
                    dto.setPrice(product.getPrice());
                    productVMList.add(dto);
                }
                result.setSuccess(true);
                result.setData(productVMList);
            }
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }

        return result;
    }
}
