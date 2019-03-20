package application.controller.web;

import application.data.model.*;
import application.data.service.*;
import application.model.viewmodel.*;
import application.model.viewmodel.Admin.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(path = "/admin")
public class AdminController {

    @Autowired
    private SupplyService supplyService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private ProductService productService;

    @Autowired
    private PromotionService promotionService;

    @Autowired
    private SizeService sizeService;

    @Autowired
    private ColorService colorService;

    @GetMapping("")
    public String admin(Model model) {


        model.addAttribute("vm", "Xuan Son");
        return "/admin/home";
    }

    @GetMapping("/supply")
    public String supply(Model model,
                         @Valid @ModelAttribute("supplyname") SupplyVM supplyName) {
        AdminSupplyVM vm= new AdminSupplyVM();
        List<Supply> supplyList;
        if (supplyName.getName() != null) {
            supplyList = supplyService.getListSupplyByName(supplyName.getName());
            vm.setKeyWord("Find with key: "+supplyName.getName());
        } else {
            supplyList = supplyService.getAll();
            vm.setKeyWord("");
        }
        List<SupplyVM> supplyVMList = new ArrayList<>();
        if(supplyList==null)
            vm.setKeyWord("Not found");
        else{
            for (Supply supply : supplyList) {
                SupplyVM supplyVM = new SupplyVM();
                supplyVM.setId(supply.getId());
                supplyVM.setName(supply.getName());
                supplyVM.setShortDesc(supply.getShortDesc());
                supplyVM.setCreatedDate(supply.getCreatedDate());
                supplyVMList.add(supplyVM);
            }
        }

        LayoutHeaderAdminVM layoutHeaderAdminVM=new LayoutHeaderAdminVM("Xuan Son","#");
        vm.setLayoutHeaderAdminVM( layoutHeaderAdminVM);
        vm.setSupplyVMList(supplyVMList);
        model.addAttribute("vm", vm);
        return "/admin/admin-supply";
    }

    @GetMapping("/category")
    public String category(Model model,
                           @Valid @ModelAttribute("categoryname") CategoryVM categoryName) {
        AdminCategoryVM vm = new AdminCategoryVM();
        List<Category> categoryList;
        if (categoryName.getName() != null) {
            categoryList = categoryService.getListCategoryByName(categoryName.getName());
            vm.setKeyWord("Find with key: "+categoryName.getName());
        } else {
            categoryList = categoryService.getAll();
            vm.setKeyWord("");

        }
        List<CategoryVM> categoryVMList = new ArrayList<>();
        if(categoryList==null){
            vm.setKeyWord("Not found");
        } else{
            for (Category category: categoryList) {
                CategoryVM categoryVM = new CategoryVM();
                categoryVM.setId(category.getId());
                categoryVM.setName(category.getName());
                categoryVM.setShortDesc(category.getShortDesc());
                categoryVM.setCreatedDate(category.getCreatedDate());
                categoryVMList.add(categoryVM);
            }
        }
        LayoutHeaderAdminVM layoutHeaderAdminVM=new LayoutHeaderAdminVM("Xuan Son","#");
        vm.setLayoutHeaderAdminVM( layoutHeaderAdminVM);
        vm.setCategoryVMList(categoryVMList);
        model.addAttribute("vm", vm);
        return "/admin/admin-category";
    }

    @GetMapping("/product")
    public String product(Model model,
                          @Valid @ModelAttribute("productname") ProductVM productName,
                          @RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                          @RequestParam(name = "size", required = false, defaultValue = "8") Integer size
    ) {
        AdminProductVM vm = new AdminProductVM();

//
//        /**
//         * set list categoryVM
//         */
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

        List<PromotionVM> promotionVMList = new ArrayList<>();
        List<Promotion> promotionList= promotionService.getAll();
        for(Promotion promotion : promotionList) {
            PromotionVM promotionVM = new PromotionVM();
            promotionVM.setId(promotion.getId());
            promotionVM.setName(promotion.getName());
            promotionVMList.add(promotionVM);
        }

//
        Pageable pageable = new PageRequest(page, size);
        Page<Product> productPage = null;
        List<Product> productList= new ArrayList<>();
        if (productName.getName() != null && !productName.getName().isEmpty()) {
          //  productPage = productService.getListProductByCategoryOrProductNameContaining(pageable,null,productName.getName().trim());
            productList=productService.getListProductByName(productName.getName());
            vm.setKeyWord("Find with key: " + productName.getName());
        } else {
            productList=productService.getListAllProducts();
     //       productPage = productService.getListProductByCategoryOrProductNameContaining(pageable,null,null);
        }
//
//
        List<ProductVM> productVMList = new ArrayList<>();
//
//        for(Product product : productPage.getContent()) {
//            ProductVM productVM = new ProductVM();
//            if(product.getCategory() == null) {
//                productVM.setCategoryName("Unknown");
//            } else {
//                productVM.setCategoryName(product.getCategory().getName());
//            }
//            productVM.setId(product.getId());
//            productVM.setName(product.getName());
//            productVM.setMainImage(product.getMainImage());
//            productVM.setPrice(product.getPrice());
//            productVM.setShortDesc(product.getShortDesc());
//            productVM.setCreatedDate(product.getCreatedDate());
//            productVM.setPromotionId(product.getPromotionId());
//            productVMList.add(productVM);
//        }

            for(Product product : productList) {
            ProductVM productVM = new ProductVM();
            if(product.getCategory() == null) {
                productVM.setCategoryName("Unknown");
            } else {
                productVM.setCategoryName(product.getCategory().getName());
            }
            productVM.setId(product.getId());
            productVM.setName(product.getName());
            productVM.setMainImage(product.getMainImage());
            productVM.setPrice(product.getPrice());
            productVM.setShortDesc(product.getShortDesc());
            productVM.setCreatedDate(product.getCreatedDate());
            productVM.setPromotionId(product.getPromotionId());
            productVMList.add(productVM);
        }
        LayoutHeaderAdminVM layoutHeaderAdminVM= new LayoutHeaderAdminVM("Xuan Son","#");
//        //vm.setLayoutHeaderAdminVM(this.getLayoutHeaderAdminVM());
        vm.setLayoutHeaderAdminVM(layoutHeaderAdminVM);
        vm.setCategoryVMList(categoryVMList);
        vm.setProductVMList(productVMList);
        vm.setSupplyVMList(supplyVMList);
        vm.setPromotionVMList(promotionVMList);
        if(productVMList.size() == 0) {
            vm.setKeyWord("Not found any product");
        }


        model.addAttribute("vm",vm);
//        model.addAttribute("page",productPage);

        return "/admin/admin-product";
    }


    @GetMapping("/promotion")
    public String promotion(Model model,
                           @Valid @ModelAttribute("promotionname") PromotionVM promotionName) {
        AdminPromotionVM vm = new AdminPromotionVM();
        List<Promotion> promotionList;
        if (promotionName.getName() != null) {
            promotionList = promotionService.getListSupplyByName(promotionName.getName());
            vm.setKeyWord("Find with key: "+promotionName.getName());
        } else {
            promotionList = promotionService.getAll();
            vm.setKeyWord("");

        }
        List<PromotionVM> promotionVMList = new ArrayList<>();
        if(promotionList==null){
            vm.setKeyWord("Not found");
        } else{
            for (Promotion promotion: promotionList) {
                PromotionVM promotionVM = new PromotionVM();
                promotionVM.setId(promotion.getId());
                promotionVM.setName(promotion.getName());
                promotionVM.setShortDesc(promotion.getShortDesc());
                promotionVM.setCreatedDate(promotion.getCreatedDate());
                promotionVM.setBeginDate(promotion.getBeginDate());
                promotionVM.setEndDate(promotion.getEndDate());
                promotionVM.setDiscount(promotion.getDiscount());
                promotionVMList.add(promotionVM);
            }
        }
        LayoutHeaderAdminVM layoutHeaderAdminVM=new LayoutHeaderAdminVM("Xuan Son","#");
        vm.setLayoutHeaderAdminVM( layoutHeaderAdminVM);
        vm.setPromotionVMList(promotionVMList);
        model.addAttribute("vm", vm);
        return "/admin/admin-promotion";
    }



    @GetMapping("/size")
    public String size(Model model,
                         @Valid @ModelAttribute("sizename") SizeVM sizeName) {
        AdminSizeVM vm= new AdminSizeVM();
        List<Size> sizeList;
        if (sizeName.getName() != null) {
            sizeList = sizeService.getListSizeByName(sizeName.getName());
            vm.setKeyWord("Find with key: "+sizeName.getName());
        } else {
            sizeList = sizeService.getAll();
            vm.setKeyWord("");
        }
        List<SizeVM> sizeVMList = new ArrayList<>();
        if(sizeList==null)
            vm.setKeyWord("Not found");
        else{
            for (Size size : sizeList) {
                SizeVM sizeVM = new SizeVM();
                sizeVM.setId(size.getId());
                sizeVM.setName(size.getName());
                sizeVM.setShortDesc(size.getShortDesc());
                sizeVM.setCreatedDate(size.getCreatedDate());
                sizeVMList.add(sizeVM);
            }
        }

        LayoutHeaderAdminVM layoutHeaderAdminVM=new LayoutHeaderAdminVM("Xuan Son","#");
        vm.setLayoutHeaderAdminVM( layoutHeaderAdminVM);
        vm.setSizeVMList(sizeVMList);
        model.addAttribute("vm", vm);
        return "/admin/admin-size";
    }


    @GetMapping("/color")
    public String color(Model model,
                       @Valid @ModelAttribute("colorname") ColorVM colorName) {
        AdminColorVM vm= new AdminColorVM();
        List<Color> colorList;
        if (colorName.getName() != null) {
            colorList = colorService.getListColorByName(colorName.getName());
            vm.setKeyWord("Find with key: "+colorName.getName());
        } else {
            colorList = colorService.getAll();
            vm.setKeyWord("");
        }
        List<ColorVM> colorVMList = new ArrayList<>();
        if(colorList==null)
            vm.setKeyWord("Not found");
        else{
            for (Color color : colorList) {
                ColorVM colorVM = new ColorVM();
                colorVM.setId(color.getId());
                colorVM.setName(color.getName());
                colorVM.setShortDesc(color.getShortDesc());
                colorVM.setCreatedDate(color.getCreatedDate());
                colorVMList.add(colorVM);
            }
        }

        LayoutHeaderAdminVM layoutHeaderAdminVM=new LayoutHeaderAdminVM("Xuan Son","#");
        vm.setLayoutHeaderAdminVM( layoutHeaderAdminVM);
        vm.setColorVMList(colorVMList);
        model.addAttribute("vm", vm);
        return "/admin/admin-color";
    }
}
