package application.model.viewmodel.Admin;

import application.model.viewmodel.CategoryVM;
import application.model.viewmodel.ProductVM;
import application.model.viewmodel.PromotionVM;
import application.model.viewmodel.SupplyVM;

import java.util.List;

public class AdminWareHouseVM {

    private List<SupplyVM> supplyVMList;
    private List<PromotionVM> promotionVMList;
    private List<WareHouseVM> wareHouseVMList;
    private List<CategoryVM> categoryVMList;
    private String keyWord;
    private LayoutHeaderAdminVM layoutHeaderAdminVM;

    public List<SupplyVM> getSupplyVMList() {
        return supplyVMList;
    }

    public void setSupplyVMList(List<SupplyVM> supplyVMList) {
        this.supplyVMList = supplyVMList;
    }

    public List<PromotionVM> getPromotionVMList() {
        return promotionVMList;
    }

    public void setPromotionVMList(List<PromotionVM> promotionVMList) {
        this.promotionVMList = promotionVMList;
    }

    public List<WareHouseVM> getWareHouseVMList() {
        return wareHouseVMList;
    }

    public void setWareHouseVMList(List<WareHouseVM> wareHouseVMList) {
        this.wareHouseVMList = wareHouseVMList;
    }

    public List<CategoryVM> getCategoryVMList() {
        return categoryVMList;
    }

    public void setCategoryVMList(List<CategoryVM> categoryVMList) {
        this.categoryVMList = categoryVMList;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public LayoutHeaderAdminVM getLayoutHeaderAdminVM() {
        return layoutHeaderAdminVM;
    }

    public void setLayoutHeaderAdminVM(LayoutHeaderAdminVM layoutHeaderAdminVM) {
        this.layoutHeaderAdminVM = layoutHeaderAdminVM;
    }
}
