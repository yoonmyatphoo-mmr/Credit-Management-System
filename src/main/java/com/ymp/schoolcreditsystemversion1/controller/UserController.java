package com.ymp.schoolcreditsystemversion1.controller;

import com.ymp.schoolcreditsystemversion1.model.entity.StudentDetail;
import com.ymp.schoolcreditsystemversion1.model.entity.StudentRecord;
import com.ymp.schoolcreditsystemversion1.model.entity.Subject;
import com.ymp.schoolcreditsystemversion1.model.entity.User;
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
import java.util.Map;

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
    public String getProfilePage(Model model) {
        return "profile";
    }

    @GetMapping("/changePassword")
    public String getChangePassword(Model model) {
        return "changePassword";
    }

    @GetMapping("/studentRecord")
    public String getStudentRecord(Model model) {
        return "studentRecord";
    }

    @GetMapping("/searchRecord")
    public String getSearchRecord(Model model) {

        return "searchRecord";
    }

    @GetMapping("/viewStudent")
    public String viewStudent() {
        return "viewStudent";
    }

    @GetMapping("/viewSubject")
    public String viewSubject() {
        return "viewSubject";
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
    public ResponseEntity getYearSemeMajorName(@RequestParam String studentIdentity, Model model) {
        log.info("!!! Start getYearSemeMajor !!!");
        String[] getYearSemeMajorName = userService.getYearSemeMajorName(studentIdentity);
        if (getYearSemeMajorName.length == 0) {
            return ResponseEntity.badRequest().body(new String[]{studentIdentity + " does not exist in studentList!"});
        }
        log.info("getYearSemeMajorName: {}", getYearSemeMajorName);
        log.info("!!! Exit getYearSemeMajor");
        return ResponseEntity.ok().body(getYearSemeMajorName);
    }

    @GetMapping("/getSubjectList")
    public ResponseEntity getSubjectList(Model model, @RequestParam String yearId, @RequestParam String semesterId, @RequestParam String majorId) {
        log.info("!!! Start getSubjectList Method !!!");
        List<Subject> subjectList = userService.getSubjectList(yearId, semesterId, majorId);
        List<String> subjectNames = new ArrayList<>();
        for (Subject subject : subjectList) {
            subjectNames.add(subject.getSubjectName());
        }
        model.addAttribute("subjectList", subjectNames);
        // log.info("subjectList:{}", model.getAttribute("subjectList"));
        log.info("SubjectNames: {}", subjectNames);
        log.info("!!! Exit getSubjectList Method !!!");
        return ResponseEntity.ok().body(subjectNames);
    }

    @PostMapping("/addStudentRecord")
    public String addRecord(@ModelAttribute("addStudentRecord") @RequestBody StudentRecord studentRecord, Model model) {
        log.info("!!! Start addRecord Method !!!");
        // log.info("Request data: {}", studentRecord);
        Boolean success = userService.addRecord(studentRecord);
        if(!success){
            model.addAttribute("exit",studentRecord.getName()+ "'s record exit!");
        }
        else{
            model.addAttribute("successMessage", studentRecord.getName() + "'s record is successfully add!");
        }
        log.info("Exit addStudentRecord.....");
        return "studentRecord";
    }

    @GetMapping("/searchById")
    public String searchById(Model model, @RequestParam String studentIdentity) {
        log.info("Enter searchRecord...");
        List<Map<String, Object>> results = userService.searchById(studentIdentity);
        log.info("search: " + results);
        model.addAttribute("results", results);
        log.info("Exit searchRecord");
        return "result";
    }

    @PostMapping("/changePassword")
    public ResponseEntity changePassword(Model model, Authentication authentication, @RequestParam String oldPassword, @RequestParam String newPassword) {
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

    @PostMapping("/viewStudentData")
    public String viewStudentData(Model model, @RequestParam String yearId, @RequestParam String semesterId, @RequestParam String majorId) {
        log.info("Enter viewStudentData....");
        List<StudentDetail> studentDetailList = userService.viewStudentData(yearId, semesterId, majorId);
        log.info("StudentDataList: {}", studentDetailList);
        model.addAttribute("viewStudent", studentDetailList);
        log.info("Exit viewStudentData.....");
        return "viewStudent";

    }

    @PostMapping("/viewSubjectList")
    public String viewSubjectData(Model model, @RequestParam String yearId, @RequestParam String semesterId, @RequestParam String majorId) {
        log.info("Enter viewSubjectData...");
        List<Subject> subjectList = userService.viewSubjectData(yearId, semesterId, majorId);
        log.info("SubjectList: {}", subjectList);
        model.addAttribute("viewSubject", subjectList);
        log.info("Exit viewSubjectData..");
        return "viewSubject";
    }

}
