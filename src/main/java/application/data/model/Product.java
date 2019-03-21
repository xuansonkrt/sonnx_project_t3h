package application.data.model;

import javax.persistence.*;
import java.util.Date;

@Entity(name="dbo_product")
public class Product {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_id")
    @Id
    private int id;

    @Column(name = "category_id", insertable = false, updatable = false)
    private int categoryId;

    @ManyToOne(optional = true, fetch = FetchType.LAZY)
    @JoinColumn(name = "category_id")
    private Category category;

    @Column(name = "supply_id", insertable = false, updatable = false)
    private int supplyId;

    @ManyToOne(optional = true, fetch = FetchType.LAZY)
    @JoinColumn(name = "supply_id")
    private Supply supply;

//    @Column(name = "promotion_id", insertable = false, updatable = false)
//    private int promotionId;

//    @ManyToOne(optional = true, fetch = FetchType.LAZY)
//    @JoinColumn(name = "promotion_id")
//    private Promotion promotion;

    @Column(name = "name")
    private String name;

    @Column(name = "short_desc")
    private String shortDesc;

    @Column(name="main_image")
    private String mainImage;

    @Column(name = "price")
    private double price;

    @Column(name = "created_date")
    private Date createdDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getSupplyId() {
        return supplyId;
    }

    public void setSupplyId(int supplyId) {
        this.supplyId = supplyId;
    }

    public Supply getSupply() {
        return supply;
    }

    public void setSupply(Supply supply) {
        this.supply = supply;
    }

//    public int getPromotionId() {
//        return promotionId;
//    }
//
//    public void setPromotionId(int promotionId) {
//        this.promotionId = promotionId;
//    }

//    public Promotion getPromotion() {
//        return promotion;
//    }
//
//    public void setPromotion(Promotion promotion) {
//        this.promotion = promotion;
//    }

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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }


}
