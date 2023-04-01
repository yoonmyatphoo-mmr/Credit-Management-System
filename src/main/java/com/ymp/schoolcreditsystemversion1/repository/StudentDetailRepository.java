package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.StudentDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: School-credit-system-version1
 * @package: com.ymp.schoolcreditsystemversion1.model.repository
 */
@Repository
public interface StudentDetailRepository extends JpaRepository<StudentDetail,String> {
}
