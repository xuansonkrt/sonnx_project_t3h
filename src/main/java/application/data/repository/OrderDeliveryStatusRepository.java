package application.data.repository;

import application.data.model.OrderDeliveryStatus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderDeliveryStatusRepository extends JpaRepository<OrderDeliveryStatus, Integer> {
}
