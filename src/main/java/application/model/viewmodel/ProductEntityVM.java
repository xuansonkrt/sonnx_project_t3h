package application.model.viewmodel;

public class ProductEntityVM {
    private int productEntityId;
    private long amount;
    private String colorName;
    private String sizeName;
    private int productId;

    public int getProductEntityId() {
        return productEntityId;
    }

    public void setProductEntityId(int productEntityId) {
        this.productEntityId = productEntityId;
    }

    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public String getColorName() {
        return colorName;
    }

    public void setColorName(String colorName) {
        this.colorName = colorName;
    }

    public String getSizeName() {
        return sizeName;
    }

    public void setSizeName(String sizenName) {
        this.sizeName = sizenName;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }
}
