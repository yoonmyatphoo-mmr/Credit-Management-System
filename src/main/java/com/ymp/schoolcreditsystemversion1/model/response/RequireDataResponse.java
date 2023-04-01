package com.ymp.schoolcreditsystemversion1.model.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.response
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RequireDataResponse {

    YearResponse yearResponse;
    MajorResponse majorResponse;
    SemesterResponse semesterResponse;
    SubjectResponse subjectResponse;

}
