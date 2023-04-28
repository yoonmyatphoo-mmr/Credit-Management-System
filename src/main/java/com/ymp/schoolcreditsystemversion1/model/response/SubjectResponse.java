package com.ymp.schoolcreditsystemversion1.model.response;

import com.ymp.schoolcreditsystemversion1.model.entity.Subject;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.response
 */


@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubjectResponse {
    List<Subject> subjectList;

    /*public SubjectResponse(){
//        super();
    }

    public SubjectResponse(List<SubjectName> subjectList) {
        this.subjectList = subjectList;
    }*/
}
