package application.data.model;

import javax.persistence.*;
import java.util.List;

@Entity(name = "dbo_delivery_status")
public class DeliveryStatus {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "delivry_status_id")
    @Id
    private int Id;

    @Column(name = "name")
    private String name;

    @ManyToMany
    @JoinTable(name = "dbo_order_product",
            joinColumns = @JoinColumn(name = "delivety_status_id"),
            inverseJoinColumns = @JoinColumn(name = "order_id"))
    private List<Order> orderList;
}
