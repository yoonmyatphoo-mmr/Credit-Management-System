package com.ymp.schoolcreditsystemversion1.model.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author Yoon Myat Phoo
 * @created 4/11/2022
 * @project credit-system-version1
 * @package com.ymp.creditsystem.model.entity
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "student_records")
public class StudentRecord {

    @Id
    @Column(name = "student_id")
    private String studentIdentity;
    private String name;
    private String yearId;
    private String majorId;
    private String semesterId;

    @ElementCollection
    @CollectionTable(name = "subject_marks", joinColumns = @JoinColumn(name = "student_id"))
    @MapKeyColumn(name = "subjectName")
    @Column(name = "subject_marks")
    private Map<String, Integer> subjectMarks;

    @ElementCollection
    @CollectionTable(name = "subject_credit_units", joinColumns = @JoinColumn(name = "student_id"))
    @MapKeyColumn(name = "subjectName")
    @Column(name = "subject_credit_units")
    private Map<String, Integer> subjectCreditUnits;

    @OneToMany(mappedBy = "studentRecord", cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @Fetch(FetchMode.JOIN)
    private List<SubjectForStudent> subjects = new ArrayList<>();

    private boolean deleted;
    private LocalDate createdDate;
    private String updatedDate;

}
