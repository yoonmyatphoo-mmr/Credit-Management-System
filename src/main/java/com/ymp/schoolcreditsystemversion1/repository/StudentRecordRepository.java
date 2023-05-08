package com.ymp.schoolcreditsystemversion1.repository;

import com.ymp.schoolcreditsystemversion1.model.entity.ShowResult;
import com.ymp.schoolcreditsystemversion1.model.entity.StudentRecord;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.repository
 */
@Repository
public interface StudentRecordRepository extends JpaRepository<StudentRecord, Long> {

//    @Query("SELECT sr FROM StudentRecord sr JOIN FETCH sr.subjectMarks WHERE sr.studentIdentity = :studentIdentity")
    List<StudentRecord> findByStudentIdentity(String studentIdentity);

    /*@Query("SELECT SUM(s.creditUnit) FROM SubjectForStudent s WHERE s.studentIdentity = :studentIdentity AND s.semesterId = :semester")
    int getTotalCreditUnitsForSemesterAndStudent(@Param("studentIdentity") String studentIdentity, @Param("semester") String semester);

    @Query("SELECT SUM(s.gradePoint) FROM StudentRecord s WHERE s.studentIdentity = :studentIdentity AND s.semesterId = :semester")
    int getTotalGradePointForSemesterAndStudent(@Param("studentIdentity") String studentIdentity, @Param("semester") String semester);
*/

}
