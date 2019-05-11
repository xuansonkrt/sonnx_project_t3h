package application.data.repository;

import application.data.model.Order;
import application.data.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Integer> {

    @Query("SELECT o FROM dbo_order o " +
            "WHERE (:guid IS NULL OR (o.guid = :guid))" +
            "AND (:userName IS NULL OR (o.userName = :userName))")
    List<Order> findOrderByGuidOrUserName(@Param("guid") String guid, @Param("userName") String userName);

    @Query("SELECT p FROM dbo_order p " +
            "WHERE  (:customerName IS NULL OR UPPER(p.customerName) LIKE CONCAT('%',UPPER(:customerName),'%'))")
    Page<Order> getListOrderByCustomerName(Pageable pageable, @Param("customerName") String customerName);

}
