package application.data.repository;

import application.data.model.DeliveryStatus;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DeliveryStatusRepository extends JpaRepository<DeliveryStatus, Integer> {
}
