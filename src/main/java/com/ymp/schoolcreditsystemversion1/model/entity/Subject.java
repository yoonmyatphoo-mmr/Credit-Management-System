package com.ymp.schoolcreditsystemversion1.model.entity;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.sql.Date;
/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.entity
 */
@Data
@Entity
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String subjectCode;
    private String subjectName;
    private String yearId;
    private String majorId;
    private String semesterId;
    private boolean deleted;
    private Date createdDate;
    private Date updatedDate;
}
