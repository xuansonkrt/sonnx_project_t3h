package application.data.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity(name = "dbo_supply")
public class Supply {

    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "role_id")
    @javax.persistence.Id
    private int Id;

    @Column(name = "name")
    private String name;

    @Column(name="short_desc")
    private  String shortDesc;

    @Column(name="created_date")
    private Date createdDate;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "supply")
    private List<Product> listProducts = new ArrayList<>();

    public List<Product> getListProducts() {
        return listProducts;
    }

    public void setListProducts(List<Product> listProducts) {
        this.listProducts = listProducts;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
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

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }
}
