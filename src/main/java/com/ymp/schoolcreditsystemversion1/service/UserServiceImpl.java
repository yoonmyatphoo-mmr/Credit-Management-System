package com.ymp.schoolcreditsystemversion1.service;

import com.ymp.schoolcreditsystemversion1.model.entity.*;
import com.ymp.schoolcreditsystemversion1.model.pojo.GradeAndScore;
import com.ymp.schoolcreditsystemversion1.model.request.UserTechStuData;
import com.ymp.schoolcreditsystemversion1.model.response.*;
import com.ymp.schoolcreditsystemversion1.repository.*;
import com.ymp.schoolcreditsystemversion1.util.PasswordGenerationUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.service
 */
@Service
@Slf4j // for logging by using lombok
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    StudentDetailRepository studentDetailRepository;

    @Autowired
    TeacherDetailRepository teacherDetailRepository;

    @Autowired
    SubjectRepository subjectRepository;

    @Autowired
    SemesterRepository semesterRepository;

    @Autowired
    YearRepository yearRepository;

    @Autowired
    MajorRepository majorRepository;

    @Autowired
    StudentRecordRepository studentRecordRepository;

    @Override
    public User login(String email, String password) {
        List<User> userList = userRepository.findByEmailAndPasswordAndDeleted(email, password, false);

        //log.info("userList: " + userList);
        if (userList == null || userList.isEmpty()) {
            log.info("Wrong Credentials");
            return null;
        } else if (userList.size() > 1) {
            log.info("Something went wrong, contact to administrator");
            return null;
        }
        return userList.get(0);
    }

    @Override
    public RequireDataResponse getRequireData() {
        List<Subject> subjectList = subjectRepository.findByDeleted(false);
        List<Semester> semesterList = semesterRepository.findByDeleted(false);
        List<Year> yearList = yearRepository.findByDeleted(false);
        //log.info("yearList: {}",yearList);
        List<Major> majorList = majorRepository.findByDeleted(false);
        return new RequireDataResponse(
                new YearResponse(yearList), new MajorResponse(majorList),
                new SemesterResponse(semesterList), new SubjectResponse(subjectList));
    }

    @Override
    public Subject insertSubject(Subject subject) {

        Subject subjectModel = new Subject();
        subjectModel.setSubjectCode(subject.getSubjectCode());
        subjectModel.setSubjectName(subject.getSubjectName());
        subjectModel.setMajorId(subject.getMajorId());
        subjectModel.setSemesterId(subject.getSemesterId());
        subjectModel.setYearId(subject.getYearId());
        subjectModel.setDeleted(false);
        subjectModel.setUpdatedDate(Date.valueOf(LocalDate.now()));
        subjectModel.setCreatedDate(Date.valueOf(LocalDate.now()));

        Subject addedSubject = subjectRepository.save(subjectModel);
        return addedSubject;
    }

    @Override
    public StudentRecord addRecord(StudentRecord studentRecord) {
        studentRecord.getName();
        studentRecord.getAttendance();
        studentRecord.getYear();
        studentRecord.getSemester();
        studentRecord.getMajor();
        studentRecord.getSubjectName();
        studentRecord.getTotalRollCall();
        studentRecord.getAttendance();
        studentRecord.getTotalTutoTest();
        studentRecord.getTotalTutoAttendance();
        studentRecord.getMark();
        studentRecord.getCreditUnit();
        studentRecord.getStudentIdentity();
        studentRecord.getGrade();
        studentRecord.getGradeScore();
        studentRecord.getGradePoint();
        studentRecord.setDeleted(false);
        studentRecord.setCreatedDate(LocalDate.now());
        studentRecord.setUpdatedDate(null);


        studentRecord.getSemester();

        studentRecord.getMajor();



        return null;
    }

    @Override
    public List<Subject> getSubjectList(Long yearId, Long semesterId, Long majorId) {
       List<Subject> subject = subjectRepository.findAllByYearIdAndSemesterIdAndMajorId(yearId,semesterId,majorId);
       return subject;
    }


    @Override
    public String saveUserData(UserTechStuData userTechStuData) {

        //save userModel

        try {
            List<User> userEmailValid = userRepository.findByEmail(userTechStuData.getEmail());
            if (!userEmailValid.isEmpty()) {
                System.out.println("Duplicate user");
                return "duplicate user";
            }

            User userModel = new User();
            userModel.setEmail(userTechStuData.getEmail());
            userModel.setAddress(userTechStuData.getAddress());
            userModel.setName(userTechStuData.getName());
            userModel.setPhoneNo(userTechStuData.getPhoneNo());
            userModel.setPassword(PasswordGenerationUtil.generatePassword());
            userModel.setUserType(userTechStuData.getUserType());
            userModel.setDeleted(false);
            userModel.setCreatedDate(Date.valueOf(LocalDate.now()));
            userModel.setUpdatedDate(Date.valueOf(LocalDate.now()));
            if (userTechStuData.getUserType().equals("teacher")) {
                userModel.setRoleId(2L);
            } else if (userTechStuData.getUserType().equals("student")) {
                userModel.setRoleId(3L);
            }
            User user = userRepository.save(userModel);

            //save studentDetail
            if (userTechStuData.getUserType().equals("student")) {
                StudentDetail studentDetailModel = new StudentDetail();
                studentDetailModel.setUserId(user.getId());
                studentDetailModel.setStudentIdentity(userTechStuData.getStudentId());
                studentDetailModel.setName(userTechStuData.getName());
                studentDetailModel.setMajorId(userTechStuData.getMajorId());
                studentDetailModel.setSemesterId(userTechStuData.getSemesterId());
                studentDetailModel.setYearId(userTechStuData.getYearId());
                studentDetailRepository.save(studentDetailModel);
            }

            //save teacherDetails
            else {
                TeacherDetails teacherDetails = new TeacherDetails();
                teacherDetails.setUserId(user.getId());
                teacherDetails.setTeacherIdentity(userTechStuData.getTeacherId());
                teacherDetails.setName(userTechStuData.getName());
                teacherDetails.setPosition(userTechStuData.getPosition());
                teacherDetails.setDeptName(userTechStuData.getDeptName());
                teacherDetailRepository.save(teacherDetails);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "System Error";
        }

        return "Successfully Created User Account";
    }

    private GradeAndScore setGradeAndScore(int mark) {
        GradeAndScore gradeAndScore = null;

        if (mark >= 90) {
            gradeAndScore = new GradeAndScore("A+", 4);

        } else if (mark >= 80 && mark < 90) {
            gradeAndScore = new GradeAndScore("A", 4);

        } else if (mark >= 75 && mark < 80) {
            gradeAndScore = new GradeAndScore("A-", 3.67);

        } else if (mark >= 70 && mark < 75) {
            gradeAndScore = new GradeAndScore("B+", 3.33);
        } else if (mark >= 65 && mark < 70) {
            gradeAndScore = new GradeAndScore("B", 3);

        } else if (mark >= 60 && mark < 65) {
            gradeAndScore = new GradeAndScore("B-", 2.67);

        } else if (mark >= 55 && mark < 60) {
            gradeAndScore = new GradeAndScore("C+", 2.33);

        } else if (mark >= 50 && mark < 55) {
            gradeAndScore = new GradeAndScore("C", 2);

        } else if (mark >= 40 && mark < 50) {
            gradeAndScore = new GradeAndScore("D", 1);

        } else if (mark >= 0 && mark < 40) {
            gradeAndScore = new GradeAndScore("F", 0.0);

        }
        return gradeAndScore;

    }

}


