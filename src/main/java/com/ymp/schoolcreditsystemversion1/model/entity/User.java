package com.ymp.schoolcreditsystemversion1.model.entity;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import javax.persistence.*;
import java.sql.Date;

/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.entity
 */
@Data
// using lombok to get getter and setter method which is needed to inject data from properties file into fields by setter method, getter method is need for access field value from other class.
@Entity
@RequiredArgsConstructor
@Table(name = "userdata")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String email;
    private String password;
    private String userType;
    private String address;
    private String phoneNo;
    private Long roleId;
    private boolean deleted;
    private Date createdDate;
    private Date updatedDate;

}
