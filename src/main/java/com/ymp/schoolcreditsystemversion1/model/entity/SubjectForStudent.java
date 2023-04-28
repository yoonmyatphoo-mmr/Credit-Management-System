package com.ymp.schoolcreditsystemversion1.model.entity;

import lombok.Data;

import javax.persistence.*;
import java.sql.Date;
import java.time.LocalDate;

/**
 * @Author Yoon Myat Phoo
 * @created 4/27/2023
 * @project school-credit-system-version1
 * @package com.ymp.schoolcreditsystemversion1.model.entity
 */
@Data
@Entity
public class SubjectForStudent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String studentIdentity;
    private String subjectName;
    private int creditUnit;
    private int mark;
    private double gradeScore;
    private String grade;
    private double gradePoint;
    private int totalCreditUnit;
    private double totalGradePoint;
    private double cumulativeGPA;
    private boolean deleted;
    private LocalDate createdDate;
    private Date updatedDate;

    @ManyToOne(fetch = FetchType.LAZY)
    private StudentRecord studentRecord;
}
