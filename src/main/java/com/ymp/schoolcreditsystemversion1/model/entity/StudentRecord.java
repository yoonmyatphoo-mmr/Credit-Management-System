package com.ymp.schoolcreditsystemversion1.model.entity;


import lombok.Data;

import javax.persistence.*;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

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
    private String yearId;
    private String majorId;
    private String semesterId;
    private String phoneNo;
    private int totalCreditUnit;
    private double totalGradePoint;
    private double cumulativeGPA;
    private boolean deleted;
    private LocalDate createdDate;
    private String updatedDate;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "studentRecord")
    private List<SubjectForStudent> subjectForStudentList = new ArrayList<>();

    public void addSubjectForStudent(SubjectForStudent subjectForStudent) {
        subjectForStudentList.add(subjectForStudent);
        subjectForStudent.setStudentRecord(this);
    }//initialized with an empty list to avoid NullPointerException when adding new subject records to a student

}
