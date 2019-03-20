package application.data.repository;

import application.data.model.Color;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ColorRepository extends JpaRepository<Color,Integer> {
    @Query("SELECT p FROM dbo_color p " +
            "WHERE (:colorName IS NULL OR UPPER(p.name) LIKE CONCAT('%',UPPER(:colorName),'%'))")
    List<Color> getListColorByName(@Param("colorName") String colorName);
}
