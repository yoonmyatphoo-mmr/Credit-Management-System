package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.ShowResult;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2023
 * @project school-credit-system-version1
 * @package com.ymp.schoolcreditsystemversion1.repository
 */
@Repository
public interface ShowResultRepository extends JpaRepository<ShowResult,Long> {

    List<ShowResult> findByStudentIdentity(String studentId);



}
