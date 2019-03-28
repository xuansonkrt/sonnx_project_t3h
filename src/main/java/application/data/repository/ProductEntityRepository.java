package application.data.repository;

import application.data.model.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductEntityRepository extends JpaRepository<ProductEntity,Integer> {
    List<ProductEntity> findByProductId(Integer productId);
}
