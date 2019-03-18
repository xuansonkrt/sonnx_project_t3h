package application.data.model;


import javax.persistence.*;

@Entity(name = "dbo_product_entity")
public class ProductEntity {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "product_entity_id")
    @Id
    private int id;

    @Column(name = "amount")
    private int amount;

    @Column(name = "size_id", insertable = false, updatable = false)
    private int sizeId;

    @ManyToOne(optional = true, fetch = FetchType.LAZY)
    @JoinColumn(name="size_id")
    private Size size;

    @Column(name = "color_id", insertable = false, updatable = false)
    private int colorId;

    @ManyToOne(optional = true, fetch = FetchType.LAZY)
    @JoinColumn(name="color_id")
    private Color color;

    @Column(name = "product_id", insertable = false, updatable = false)
    private int productId;

    @ManyToOne(optional = true, fetch = FetchType.LAZY)
    @JoinColumn(name="product_id")
    private Product product;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getSizeId() {
        return sizeId;
    }

    public void setSizeId(int sizeId) {
        this.sizeId = sizeId;
    }

    public Size getSize() {
        return size;
    }

    public void setSize(Size size) {
        this.size = size;
    }

    public int getColorId() {
        return colorId;
    }

    public void setColorId(int colorId) {
        this.colorId = colorId;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
