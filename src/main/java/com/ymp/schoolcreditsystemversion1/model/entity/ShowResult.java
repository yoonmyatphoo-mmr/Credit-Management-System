package com.ymp.schoolcreditsystemversion1.model.entity;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/02/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.entity
 */
@Data
// using lombok to get getter and setter method which is needed to inject data from properties file into fields by setter method, getter method is need for access field value from other class.
@Table(name = "showResult")
public class ShowResult {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long resultId;

    private String studentId;

    private int credit_unit1;

    private String grade1;

    private double grade_score1;

    private double grade_point1;

    private int credit_unit2;

    private String grade2;

    private double grade_score2;

    private double grade_point2;

    private int credit_unit3;

    private String grade3;

    private double grade_score3;

    private double grade_point3;

    private int credit_unit4;

    private String grade4;

    private double grade_score4;

    private double grade_point4;

    private int credit_unit5;

    private String grade5;

    private double grade_score5;

    private double grade_point5;

    private int credit_unit6;

    private String grade6;

    private double grade_point6;

    private double grade_score6;

    private int credit_unit7;

    private String grade7;

    private double grade_point7;

    private double grade_score7;

    private int seme2credit_unit1;

    private String seme2grade1;

    private double seme2grade_score1;

    private double seme2grade_point1;

    private int seme2credit_unit2;

    private String seme2grade2;

    private double seme2grade_score2;

    private double seme2grade_point2;

    private int seme2credit_unit3;

    private String seme2grade3;

    private double seme2grade_score3;

    private double seme2grade_point3;

    private int seme2credit_unit4;

    private String seme2grade4;

    private double seme2grade_score4;

    private double seme2grade_point4;

    private int seme2credit_unit5;

    private String seme2grade5;

    private double seme2grade_score5;

    private double seme2grade_point5;

    private int seme2credit_unit6;

    private String seme2grade6;

    private double seme2grade_point6;

    private double seme2grade_score6;

    private int seme2credit_unit7;

    private String seme2grade7;

    private double seme2grade_score7;

    private double seme2grade_point7;
    private boolean deleted;
    private String createdDate;
    private String updatedDate;

}
