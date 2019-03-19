package application.model.viewmodel;

import java.util.Date;
import java.util.List;

public class ProductVM   {
    private int id;
    private String categoryName;
    private String name;
    private String shortDesc;
    private String mainImage;
    private Double price;
    private Date createdDate;
    private List<ProductImageVM> productImageVMS;
    private SupplyVM supplyVM;
    private CategoryVM categoryVM;
    private PromotionVM promotionVM;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public List<ProductImageVM> getProductImageVMS() {
        return productImageVMS;
    }

    public void setProductImageVMS(List<ProductImageVM> productImageVMS) {
        this.productImageVMS = productImageVMS;
    }

    public SupplyVM getSupplyVM() {
        return supplyVM;
    }

    public void setSupplyVM(SupplyVM supplyVM) {
        this.supplyVM = supplyVM;
    }

    public CategoryVM getCategoryVM() {
        return categoryVM;
    }

    public void setCategoryVM(CategoryVM categoryVM) {
        this.categoryVM = categoryVM;
    }

    public PromotionVM getPromotionVM() {
        return promotionVM;
    }

    public void setPromotionVM(PromotionVM promotionVM) {
        this.promotionVM = promotionVM;
    }
}
