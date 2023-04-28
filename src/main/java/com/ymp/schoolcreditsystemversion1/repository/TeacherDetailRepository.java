package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.TeacherDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.repository
 */
@Repository
public interface TeacherDetailRepository extends JpaRepository<TeacherDetails,String> {
    List<TeacherDetails> findByTeacherIdentity(String teacherIdentity);
}
