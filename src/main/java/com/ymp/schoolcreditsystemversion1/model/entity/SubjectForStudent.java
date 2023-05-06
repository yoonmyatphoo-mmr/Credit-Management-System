package com.ymp.schoolcreditsystemversion1.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

/**
 * @Author Yoon Myat Phoo
 * @created 5/4/2023
 * @project school-credit-system-version1
 * @package com.ymp.schoolcreditsystemversion1.model.entity
 */
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "subjectForStudent")
public class SubjectForStudent {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "student_id")
    private StudentRecord studentRecord;

    @Column(name = "subject_name")
    private String subjectName;

    @Column(name = "subject_marks")
    private int subjectMarks;

    @Column(name = "subject_credit_units")
    private int subjectCreditUnits;

    @Column(name = "grade")
    private String grade;

    @Column(name = "grade_score")
    private double gradeScore;

    @Column(name = "grade_point")
    private double gradePoint;


    public SubjectForStudent(String subjectName, int marks, int creditUnits, String grade, double gradeScore, double gradePoint) {
        this.subjectName = subjectName;
        this.subjectMarks = marks;
        this.subjectCreditUnits = creditUnits;
        this.grade = grade;
        this.gradeScore = gradeScore;
        this.gradePoint = gradePoint;
    }


}

