package com.ymp.schoolcreditsystemversion1.model.entity;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;
import java.time.LocalDate;

/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.entity
 */
@Data
// using lombok to get getter and setter method which is needed to inject data from properties file into fields by setter method, getter method is need for access field value from other class.
@Entity
public class StudentRecord {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String studentIdentity;
    private String year;
    private String major;
    private String semester;
    private String subjectName;
    private int totalRollCall;
    private int attendance;
    private int totalTutoTest;
    private int totalTutoAttendance;
    private int mark;
    private int creditUnit;
    private int grade;
    private double gradeScore;
    private double gradePoint;
    private boolean deleted;
    private LocalDate createdDate;
    private Date updatedDate;

}
