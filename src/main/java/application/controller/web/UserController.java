package application.controller.web;

import application.constant.StatusRegisterUserEnum;
import application.data.model.Product;
import application.data.model.User;
import application.data.service.ProductService;
import application.data.service.UserService;
import application.model.viewmodel.ProductVM;
import application.model.viewmodel.UserDetailVM;
import application.model.viewmodel.UserVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(path = "/user")
public class UserController extends  BaseController{
    @Autowired
    UserService userService;

    @Autowired
    ProductService productService;

    @GetMapping(value = {"/sign-in"})
    public String signIn(Model model)
    {
        model.addAttribute("vm","Xuan Son");
        return "/sign-in";
    }


    @GetMapping(value = {"/sign-up"})
    public String signUp(Model model)
    {
        model.addAttribute("user", new User());
        return "/sign-up";
    }

    @RequestMapping(path="/register", method = RequestMethod.POST)
    public String registerNewUser(@Valid @ModelAttribute("user")User user){
        StatusRegisterUserEnum status =userService.registerNewUser(user);
        if(status==StatusRegisterUserEnum.Existed_Username)
            return "redirect:/user/sign-up?exit_username";

        return "redirect:/user/sign-in";
    }

    @GetMapping(value = {"/detail"})
    public String detail(Model model)
    {
        UserDetailVM vm = new UserDetailVM();
        UserVM userVM = new UserVM();

        String  username = SecurityContextHolder.getContext().getAuthentication().getName();

        User userEntity = userService.findUserByUsername(username);

        userVM.setAddress(userEntity.getAddress());
        userVM.setAvatar(userEntity.getAvatar());
        userVM.setEmail(userEntity.getEmail());
        userVM.setGender(userEntity.getGender());
        userVM.setName(userEntity.getName());
        userVM.setPhoneNumber(userEntity.getPhoneNumber());
        userVM.setDateOfBirth(userEntity.getDateOfBirth());

        Pageable pageable = new PageRequest(0, 50);

        Page<Product> productPage = null;

//        if (productName.getName() != null && !productName.getName().isEmpty()) {
//            productPage = productService.getListProductByCategoryOrProductNameContaining(pageable,null,productName.getName().trim());
//            vm.setKeyWord("Find with key: " + productName.getName());
//        } else {
            productPage = productService.getListProductByCategoryOrProductNameContaining(pageable,null,null);
//        }


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

        vm.setProductVMList(productVMList);
        vm.setLayoutHeaderAdminVM(this.getLayoutHeaderAdminVM());

        model.addAttribute("user", userVM);
        model.addAttribute("vm", vm);
        return "/user-detail";
    }


    @PostMapping("/update")
    public String updateUser(@Valid @ModelAttribute("user")User user) {
        try {
            String  username = SecurityContextHolder.getContext().getAuthentication().getName();

            User userEntity = userService.findUserByUsername(username);

            userEntity.setAddress(user.getAddress());
            userEntity.setAvatar(user.getAvatar());
            userEntity.setEmail(user.getEmail());
            userEntity.setGender(user.getGender());
            userEntity.setName(user.getName());
            userEntity.setPhoneNumber(user.getPhoneNumber());
            userEntity.setDateOfBirth(user.getDateOfBirth());
            userService.updateUser(userEntity);

            return "redirect:/user/detail?updateSuccess";
        } catch (Exception e) {
//            logger.error(e.getMessage());
        }
        return "redirect:/user/detail?updateFail";
    }
}
