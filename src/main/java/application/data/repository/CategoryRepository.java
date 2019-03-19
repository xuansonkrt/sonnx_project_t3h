package application.data.repository;

import application.data.model.Category;
import application.data.model.Supply;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CategoryRepository extends JpaRepository<Category,Integer> {
    @Query("SELECT p FROM dbo_category p " +
            "WHERE (:categoryName IS NULL OR UPPER(p.name) LIKE CONCAT('%',UPPER(:categoryName),'%'))")
    List<Category> getListCategoryByName(@Param("categoryName") String categoryName);
}
