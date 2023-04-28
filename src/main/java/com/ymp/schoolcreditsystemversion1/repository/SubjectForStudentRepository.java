package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.SubjectForStudent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @Author Yoon Myat Phoo
 * @created 4/27/2023
 * @project school-credit-system-version1
 * @package com.ymp.schoolcreditsystemversion1.repository
 */
@Repository
public interface SubjectForStudentRepository extends JpaRepository<SubjectForStudent,Long> {
}
