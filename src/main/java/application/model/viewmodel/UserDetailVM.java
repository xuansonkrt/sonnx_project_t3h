package application.model.viewmodel;

import application.model.viewmodel.Admin.LayoutHeaderAdminVM;

import java.util.List;

public class UserDetailVM {
    private LayoutHeaderAdminVM layoutHeaderAdminVM;
    private List<ProductVM> productVMList;
    private UserVM userVM;

    public LayoutHeaderAdminVM getLayoutHeaderAdminVM() {
        return layoutHeaderAdminVM;
    }

    public void setLayoutHeaderAdminVM(LayoutHeaderAdminVM layoutHeaderAdminVM) {
        this.layoutHeaderAdminVM = layoutHeaderAdminVM;
    }

    public List<ProductVM> getProductVMList() {
        return productVMList;
    }

    public void setProductVMList(List<ProductVM> productVMList) {
        this.productVMList = productVMList;
    }

    public UserVM getUserVM() {
        return userVM;
    }

    public void setUserVM(UserVM userVM) {
        this.userVM = userVM;
    }
}
