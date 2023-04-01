package com.ymp.schoolcreditsystemversion1.model.request;

import lombok.Data;


/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.request
 */
@Data
public class UserTechStuData {

    private Long userId;

    private String name;

    private String email;

    private String password;

    private String address;

    private String phoneNo;

    private String userType;

    private String studentId;

    private Long majorId;

    private Long yearId;

    private Long semesterId;

    private String teacherId;

    private String position;

    private String deptName;


}
