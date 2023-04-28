package com.ymp.schoolcreditsystemversion1.service;

import com.ymp.schoolcreditsystemversion1.model.entity.*;
import com.ymp.schoolcreditsystemversion1.model.request.UserTechStuData;
import com.ymp.schoolcreditsystemversion1.model.response.RequireDataResponse;

import java.util.List;

/**
 * @author: Yoon Myat Phoo
 * @created: 05/11/2022
 * @project: credit-system-version1
 * @package: com.ymp.creditsystem.model.service
 */
public interface UserService {

  String saveUserData(UserTechStuData userModel);

  User login(String email, String password);
  RequireDataResponse getRequireData();
  Subject insertSubject(Subject subject);
  StudentRecord addRecord(StudentRecord studentRecord);
  List<Subject> getSubjectList(Long yearId, Long semesterId, Long majorId);
  Object[] getYearSemeMajorName(String studentId);
  List<ShowResult> searchRecord(String studentId);

  String changePassword(Long id,String oldPassword,String password);

  List<StudentDetail> viewUserData(Long year, Long semester, Long major);





}
