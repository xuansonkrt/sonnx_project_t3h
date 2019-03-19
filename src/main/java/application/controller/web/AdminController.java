package application.controller.web;

import application.data.model.Category;
import application.data.model.Product;
import application.data.model.Supply;
import application.data.service.CategoryService;
import application.data.service.SupplyService;
import application.model.viewmodel.*;
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
        return "/admin/supply-admin";
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
        return "/admin/category-admin";
    }

    @GetMapping("/product")
    public String product(Model model,
                          @Valid @ModelAttribute("productname") ProductVM productName,
                          @RequestParam(name = "page", required = false, defaultValue = "0") Integer page,
                          @RequestParam(name = "size", required = false, defaultValue = "8") Integer size) {


        return "/admin/product-admin";
    }
}
