package com.ymp.schoolcreditsystemversion1.model.response;

import lombok.Data;

/**
 * @Author Yoon Myat Phoo
 * @created 05/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.response
 */

@Data
public class StudentRecordDetails {
    private String subjectNameList;
    private String creditUnit;
    private String grade;
    private String gradeScore;
    private String gradePoint;
}
