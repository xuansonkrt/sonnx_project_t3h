package application.controller.web;

import application.data.model.*;
import application.data.service.*;
import application.model.dto.ProductDTO;
import application.model.viewmodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(path = "/product")
public class ProductController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    ProductService productService;

    @Autowired
    SizeService sizeService;

    @Autowired
    ColorService colorService;

    @Autowired
    SupplyService supplyService;

    @Autowired
    ProductImageService productImageService;

    @Autowired
    ProductEntityService productEntityService;

    @GetMapping(value = {"/{productId}"})
    public String home(Model model,
                       @Valid @ModelAttribute("productname") ProductDTO productName,
                       @PathVariable("productId") Integer productId)
    {
        ProductDetailVM vm = new ProductDetailVM();
        List<Category> categoryList = categoryService.getAll();
        List<CategoryVM> categoryVMList = new ArrayList<>();

        for(Category category : categoryList) {
            CategoryVM categoryVM = new CategoryVM();
            categoryVM.setId(category.getId());
            categoryVM.setName(category.getName());
            categoryVMList.add(categoryVM);
        }

        List<Supply> supplyList = supplyService.getAll();
        List<SupplyVM> supplyVMList = new ArrayList<>();

        for(Supply supply : supplyList) {
            SupplyVM supplyVM = new SupplyVM();
            supplyVM.setId(supply.getId());
            supplyVM.setName(supply.getName());
            supplyVMList.add(supplyVM);
        }


        List<ProductEntity> productEntityList = productEntityService.findByProductId(productId);
        List<ProductEntityVM> productEntityVMList = new ArrayList<>();
        for(ProductEntity item : productEntityList){
            ProductEntityVM entityVM = new ProductEntityVM();
            entityVM.setColorName(item.getColor().getName());
            entityVM.setSizeName(item.getSize().getName());
            entityVM.setAmount(item.getAmount());
            entityVM.setProductId(item.getProductId());
            entityVM.setColorId(item.getColorId());
            entityVM.setSizeId(item.getSizeId());

            productEntityVMList.add(entityVM);
        }


        List<Size> sizeList = sizeService.getAll();
        List<SizeVM> sizeVMList = new ArrayList<>();

        for(Size size2 : sizeList) {
            SizeVM sizeVM = new SizeVM();
            sizeVM.setId(size2.getId());
            sizeVM.setName(size2.getName());
            sizeVMList.add(sizeVM);
        }

        List<Color> colorList = colorService.getAll();
        List<ColorVM> colorVMList = new ArrayList<>();

        for(Color color : colorList) {
            ColorVM colorVM = new ColorVM();
            colorVM.setId(color.getId());
            colorVM.setName(color.getName());
            colorVMList.add(colorVM);
        }


        Pageable pageable = new PageRequest(0, 50);

        Page<Product> productPage = null;

        if (productName.getName() != null && !productName.getName().isEmpty()) {
            productPage = productService.getListProductByCategoryOrProductNameContaining(pageable,null,productName.getName().trim());
            vm.setKeyWord("Find with key: " + productName.getName());
        } else {
            productPage = productService.getListProductByCategoryOrProductNameContaining(pageable,null,null);
        }


        List<ProductVM> productVMList = new ArrayList<>();

        for(Product product : productPage.getContent()) {
            ProductVM productVM = new ProductVM();
            if(product.getCategory() == null) {
                productVM.setCategoryName("");
            } else {
                productVM.setCategoryName(product.getCategory().getName());
            }

            if(product.getSupply() == null) {
                productVM.setSupplyName("");
            } else {
                productVM.setSupplyName(product.getSupply().getName());
            }

            if(product.getPromotion() == null) {
                productVM.setPromotionName("");
            } else {
                productVM.setPromotionName(product.getPromotion().getName());
            }
            productVM.setId(product.getId());
            productVM.setName(product.getName());
            productVM.setMainImage(product.getMainImage());
            productVM.setPrice(product.getPrice());
            productVM.setShortDesc(product.getShortDesc());
            productVM.setCreatedDate(product.getCreatedDate());
            productVM.setCategoryId(product.getCategoryId());
            productVMList.add(productVM);
        }

        Product product2= productService.findOne(productId);
        ProductVM productVM2 = new ProductVM();
        productVM2.setId(product2.getId());
        productVM2.setName(product2.getName());
        productVM2.setPrice(product2.getPrice());
        productVM2.setShortDesc(product2.getShortDesc());
        productVM2.setMainImage(product2.getMainImage());
        productVM2.setCategoryName(product2.getCategory().getName());
        List<ProductImage> productImageList= product2.getProductImageList();

        List<ProductImageVM> productImageVMList = new ArrayList<>();
        for(ProductImage img : productImageList){
            ProductImageVM productImageVM= new ProductImageVM();
            productImageVM.setId(img.getId());
            productImageVM.setLink(img.getLink());
            productImageVM.setTitle(img.getTitle());
            productImageVMList.add(productImageVM);
        }

        vm.setProductEntityVMList(productEntityVMList);
        vm.setProductImageVMList(productImageVMList);
        vm.setProductVM(productVM2);
        vm.setCategoryVMList(categoryVMList);
        vm.setColorVMList(colorVMList);
        vm.setProductVMList(productVMList);
        vm.setSizeVMList(sizeVMList);
        vm.setSupplyVMList(supplyVMList);
        model.addAttribute("vm",vm);
        return "/product-detail";
    }
}