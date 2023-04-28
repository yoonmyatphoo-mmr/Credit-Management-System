package com.ymp.schoolcreditsystemversion1.controller;

import com.ymp.schoolcreditsystemversion1.model.entity.*;

import com.ymp.schoolcreditsystemversion1.model.request.UserTechStuData;
import com.ymp.schoolcreditsystemversion1.model.response.RequireDataResponse;
import com.ymp.schoolcreditsystemversion1.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author Yoon Myat Phoo
 * @created 4/1/2023
 * @project school-credit-system-version1
 * @package com.ymp.schoolcreditsystemversion1.controller
 */

@Controller
@Slf4j // for logging by using lombok
// @RequestMapping("/creditSystem")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/creditLogin")
    public String getLoginPage(Model model) {
        model.addAttribute("login", new User());
        return "login";
    }

    @GetMapping("/userAccounts")
    public String getUserAccounts(Model model) {
        model.addAttribute("saveUserData", new User());
        return "userAccounts";
    }

    @GetMapping("/addSubject")
    public String getAddSubject(Model model) {

        return "addSubject";
    }

    @GetMapping("/profile")
    public String getProfilePage(Model model){
        return "profile";
    }
    @GetMapping("/changePassword")
    public String getChangePassword(Model model){
        return "changePassword";
    }

    @GetMapping("/studentRecord")
    public String getStudentRecord(Model model) {

        model.addAttribute("addStudentRecord", new StudentRecord());
        return "studentRecord";
    }

    @GetMapping("/searchRecord")
    public String getSearchRecord(Model model) {

        return "searchRecord";
    }

    @RequestMapping(value = "/saveUserData", method = RequestMethod.POST)
    public String saveUserData(@ModelAttribute("saveUserData") UserTechStuData userModel, BindingResult result, Model model, HttpServletRequest request) {

        log.info("!!! Start saveUserData Method !!!");
        log.info("Request data: {}", userModel);

        try {
            if (result.hasErrors()) {
                return "userAccounts";
            }
            String response = userService.saveUserData(userModel);

            if (response.equals("duplicate user")) {
                model.addAttribute("serverError", userModel.getEmail() + " already exists!");
                log.info("Exit saveUserData API....");
                return "userAccounts";
            } else if (response.equals("StudentID have been registered!")) {
                model.addAttribute("studentIdError", userModel.getStudentId() + " already exists!");
                log.info("Exit saveUserData API....");
                return "userAccounts";
            } else if (response.equals("TeacherID have been registered!")) {
                model.addAttribute("teacherIdError", userModel.getTeacherId() + " already exists!");
                log.info("Exit saveUserData API....");
                return "userAccounts";
            }
            model.addAttribute("successMessage", userModel.getName() + " is successfully added!");
            log.info("Exit saveUserData API....");
            return "userAccounts";
        } catch (Exception e) {
            model.addAttribute("ServerError", e.toString());
            log.info("Exit saveUserData API....");
            return "error_page";
        }

    }

    @PostMapping("/creditLogin")
    public String login(@ModelAttribute("login") User userModel, Model model) {

        log.info("!!! Start Login Method !!!");
        log.info("Request data: {}", userModel);
        User login = userService.login(userModel.getEmail(), userModel.getPassword());
        log.info("userLogin is: " + login);
        if (login != null && login.getUserType().equals("teacher")) {
            String message = "teacher data created successfully";
            model.addAttribute("message", message);
            return "userAccounts";
        } else if (login != null && login.getUserType().equals("student")) {
            return "error_page_login";
        } else {
            return "error_page_login";
        }

    }

    @PostMapping("/insertSubject")
    public String insertSubject(@ModelAttribute("addSubject") Subject subjectModel, Model model) {

        log.info("!!! Start insertSubject Method !!!");
        log.info("Request data: {}", subjectModel);
        Subject subject = userService.insertSubject(subjectModel);
        log.info("subject: " + subject);
        log.info("Exit insertSubject.....");
        model.addAttribute("successMessage", subjectModel.getSubjectName() + " is successfully added!");
        return "addSubject";
    }

    @GetMapping("/getRequireData")
    public ResponseEntity<RequireDataResponse> getRequireData() {
        log.info("!!! Start getRequireData Method !!!");
        RequireDataResponse response = userService.getRequireData();
        log.info("response: {}", response);
        return ResponseEntity.ok().body(response);
    }

    @GetMapping("/getYearSemeMajorName")
    public ResponseEntity getYearSemeMajorName(@RequestParam String studentIdentity) {
        log.info("!!! Start getYearSemeMajor !!!");
        Object[] getYearSemeMajorName = userService.getYearSemeMajorName(studentIdentity);
        log.info("getYearSemeMajorName: {}", getYearSemeMajorName);
        log.info("!!! Exit getYearSemeMajor");
        return ResponseEntity.ok().body(getYearSemeMajorName);
    }

    @GetMapping("/getSubjectList")
    public ResponseEntity getSubjectList(Model model,@RequestParam Long yearId,@RequestParam Long semesterId, @RequestParam Long majorId) {
        log.info("!!! Start getSubjectList Method !!!");
        List<Subject> subjectList = userService.getSubjectList(yearId, semesterId, majorId);
        List<String> subjectNames = new ArrayList<>();
        for (Subject subject : subjectList) {
            subjectNames.add(subject.getSubjectName());
        }
        model.addAttribute("subjectList", subjectNames);
        log.info("subjectList:{}",model.getAttribute("subjectList"));
        log.info("SubjectNames: {}", subjectNames);
        log.info("!!! Exit getSubjectList Method !!!");
        return ResponseEntity.ok().body(subjectNames);
    }


    @PostMapping("/addStudentRecord")
    public ResponseEntity addRecord(@ModelAttribute("addStudentRecord") @RequestBody StudentRecord studentRecord, Model model) {
        log.info("!!! Start addRecord Method !!!");
        log.info("Request data: {}", studentRecord);
        StudentRecord record = userService.addRecord(studentRecord);
        log.info("Records: " + record);
        log.info("Exit addStudentRecord.....");
        return ResponseEntity.ok().body(record);
    }


   /* @GetMapping("/showResult")
    public ResponseEntity showData(Model model) {
        log.info("Enter showResult....");
        List<ShowResult> result = userService.showResult();
        log.info("result: " + result);
       model.addObject("showResult",result);
       model.setViewName("studentAcademicRecord");
        log.info("Exit showResult....");
        return model;
    }*/

    @GetMapping("/searchRecordById")
    public String search(Model model, @RequestParam String studentIdentity) {
        log.info("Enter searchRecord...");
        List<ShowResult> results = userService.searchRecord(studentIdentity);
        log.info("search: " + results);
        model.addAttribute("results", results);
        log.info("Exit searchRecord");
        return "result";
    }

    @PostMapping("/changePassword")
    public ResponseEntity changePassword(Model model,Authentication authentication, @RequestParam String oldPassword, @RequestParam String newPassword) {
        Long userId = ((User) authentication.getPrincipal()).getId();
        log.info("Enter changePassword....");
        String changePassword = userService.changePassword(userId, oldPassword, newPassword);
        model.addAttribute("changePassword", changePassword);
        log.info("changePassword{} ", changePassword);
        log.info("Exit changePassword.....");
        if (changePassword == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("User not found");
        } else if (changePassword.equals("invalidPassword")) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid old password");
        } else {
            return ResponseEntity.ok().body(changePassword);
        }
    }
    @GetMapping("/viewUserData")
    public ResponseEntity viewUserData(@RequestParam Long year, @RequestParam Long semester, @RequestParam Long major){
        log.info("Enter viewUserData....");
       List<StudentDetail> studentDetailList = userService.viewUserData(year,semester,major);
       log.info("userTechStuDataList: {}", studentDetailList);
       log.info("Exit viewUserData.....");
       return ResponseEntity.ok().body(studentDetailList);

    }

}
