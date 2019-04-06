package application.controller.api;

import application.data.model.Product;
import application.data.model.User;
import application.data.service.UserService;
import application.model.api.BaseApiResult;
import application.model.api.DataApiResult;
import application.model.dto.ProductDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
@RequestMapping(path = "/api/user")
public class UserApiController {
    @Autowired
    UserService userService;

    @PostMapping(value = "/check")
    public BaseApiResult createProduct(@RequestBody String userName){
        DataApiResult result = new DataApiResult();

        try {
            User user= userService.findUserByUsername(userName);
            if(user==null){
                result.setMessage("OK");
                result.setSuccess(true);
            } else {
                result.setMessage("NOT OK");
                result.setSuccess(false);
            }
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage(e.getMessage());
        }
        return result;
    }
}
