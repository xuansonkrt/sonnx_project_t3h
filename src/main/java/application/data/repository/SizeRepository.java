package application.data.repository;

import application.data.model.Category;
import application.data.model.Size;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface SizeRepository extends JpaRepository<Size,Integer> {
    @Query("SELECT p FROM dbo_size p " +
            "WHERE (:sizeName IS NULL OR UPPER(p.name) LIKE CONCAT('%',UPPER(:sizeName),'%'))")
    List<Size> getListSizeByName(@Param("sizeName") String sizeName);
}
