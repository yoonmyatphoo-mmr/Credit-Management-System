package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.StudentDetail;
import com.ymp.schoolcreditsystemversion1.model.entity.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: School-credit-system-version1
 * @package: com.ymp.schoolcreditsystemversion1.model.repository
 */
@Repository
public interface StudentDetailRepository extends JpaRepository<StudentDetail,String> {

    @Query("SELECT s.name, s.yearId, s.semesterId, s.majorId FROM StudentDetail s WHERE s.studentIdentity = :studentIdentity")
    String[] findYearMajorSemesterAndNameByStudentIdentity(@Param("studentIdentity") String studentIdentity);

    List<StudentDetail> findByStudentIdentity(String studentIdentity);

    List<StudentDetail> findByYearIdAndSemesterIdAndMajorId(String year,String semester, String major);



}
