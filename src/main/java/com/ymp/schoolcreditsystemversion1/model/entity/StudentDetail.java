package com.ymp.schoolcreditsystemversion1.model.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.entity
 */
@Data
// using lombok to get getter and setter method which is needed to inject data from properties file into fields by setter method, getter method is need for access field value from other class.
@Entity
public class StudentDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String studentIdentity;

    private String name;

    private String yearId;

    private String semesterId;

    private String majorId;

    private Long userId;

    private String phoneNo;

    private String address;

}
