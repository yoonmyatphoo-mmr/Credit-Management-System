package com.ymp.schoolcreditsystemversion1.model.entity;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/02/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.entity
 */
@Data
// using lombok to get getter and setter method which is needed to inject data from properties file into fields by setter method, getter method is need for access field value from other class.
@Table(name = "showResult")
@Entity
public class ShowResult {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long resultId;
    private String name;
    private String studentIdentity;
    private String year;
    private String semester;
    private String major;
    private String phoneNo;
    private String subjectName;
    private int creditUnit;
    private String grade;
    private double gradeScore;
    private double gradePoint;
    private int totalCreditUnit;
    private double totalGradePoint;
    private double cumulativeGPA;
    private boolean deleted;
    private LocalDate createdDate;
    private String updatedDate;

}
