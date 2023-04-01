package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.Year;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.schoolcreditsystemversion1.model.repository
 */
@Repository
public interface YearRepository extends JpaRepository<Year,Long> {

    List<Year> findByDeleted(boolean deleted);

}
