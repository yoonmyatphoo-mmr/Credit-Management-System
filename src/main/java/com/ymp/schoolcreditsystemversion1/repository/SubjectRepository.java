package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.Subject;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: school-credit-system-version1
 * @package: com.ymp.schoolcreditsystemversion1.model.repository
 */
@Repository
public interface SubjectRepository extends JpaRepository<Subject,Long> {

    List<Subject> findByDeleted(boolean deleted);

    List<Subject> findAllByYearIdAndSemesterIdAndMajorId(Long yearId, Long semesterId, Long majorId);


}
