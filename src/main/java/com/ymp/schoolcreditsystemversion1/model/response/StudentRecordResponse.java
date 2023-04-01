package com.ymp.schoolcreditsystemversion1.model.response;


import lombok.Data;

import java.util.List;
/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.response
 */
@Data
public class StudentRecordResponse {

    private Long id;
    private String name;
    private String address;
    private String phoneNo;
    private String year;
    private String rollNo;
    private String semester;
    private List<StudentRecordDetails> studentRecordDetails;
    private String totalCreditUnit;
    private String totalGradePoint;
    private String gpa;

}
