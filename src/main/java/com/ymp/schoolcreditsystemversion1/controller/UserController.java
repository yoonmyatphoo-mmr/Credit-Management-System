package com.ymp.schoolcreditsystemversion1.controller;

import com.ymp.schoolcreditsystemversion1.model.entity.StudentRecord;
import com.ymp.schoolcreditsystemversion1.model.entity.Subject;
import com.ymp.schoolcreditsystemversion1.model.entity.User;
import com.ymp.schoolcreditsystemversion1.model.request.UserTechStuData;
import com.ymp.schoolcreditsystemversion1.model.response.RequireDataResponse;
import com.ymp.schoolcreditsystemversion1.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
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
    public class UserController {

        @Autowired
        UserService userService;

        @GetMapping("/login")
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
                    // session.setAttribute("error",response);
                    log.info("Exit saveUserData API....");
                    return "error_page";
                }
                request.getSession().setAttribute("SuccessMessage", "User is successfully added!");
                log.info("Exit saveUserData API....");
                return "userAccounts";
            } catch (Exception e) {
                model.addAttribute("ServerError", e.toString());
                log.info("Exit saveUserData API....");
                return "error_page";
            }

        }

        @PostMapping("/login")
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
        public String insertSubject(@ModelAttribute("addSubject") Subject subjectModel) {

            log.info("!!! Start insertSubject Method !!!");
            log.info("Request data: {}", subjectModel);
            Subject subject = userService.insertSubject(subjectModel);
            log.info("subject: " + subject);
            log.info("Exit insertSubject.....");
            return "addSubject";
        }

        @GetMapping("/getRequireData")
        public ResponseEntity<RequireDataResponse> getRequireData() {
            log.info("!!! Start getRequireData Method !!!");
            RequireDataResponse response = userService.getRequireData();
            log.info("response: {}", response);
            return ResponseEntity.ok().body(response);
        }

        @GetMapping("/getSubjectList")
        public ResponseEntity getSubjectList(@RequestParam Long yearId, @RequestParam Long semesterId, @RequestParam Long majorId) {
            log.info("!!! Start getSubjectList Method !!!");
            List<Subject> subjectList = userService.getSubjectList(yearId,semesterId,majorId);
            List<String> subjectNames = new ArrayList<>();
            for (Subject subject : subjectList) {
                subjectNames.add(subject.getSubjectName());
            }

            log.info("SubjectNames: {}",subjectNames);
            log.info("!!! Exit getSubjectList Method !!!");
            return ResponseEntity.ok().body(subjectNames);
        }

        @PostMapping("/addStudentRecord")
        public String addRecord(@ModelAttribute("addStudentRecord") StudentRecord studentRecord) {
            log.info("!!! Start addRecord Method !!!");
            log.info("Request data: {}", studentRecord);
            StudentRecord record = userService.addRecord(studentRecord);
            log.info("Records: " + record);
            log.info("Exit addStudentRecord.....");
            return "studentAcademicRecord";
        }




  /*  @GetMapping("/showResult")
    public ModelAndView showData(ModelAndView model) {
        log.info("Enter showResult....");
        List<ShowResult> result = userService.showResult();
        log.info("result: " + result);
       model.addObject("showResult",result);
       model.setViewName("studentAcademicRecord");
        log.info("Exit showResult....");
        return model;
    }*/

   /* @GetMapping("/searchRecordById")
    public String search(ModelAndView modelAndView,String studentId){
        log.info("Enter searchRecord");
        List<ShowResult> searchRecord = userService.searchRecord(studentId);
        log.info("search: " + searchRecord);
        modelAndView.addObject("searchRecord",searchRecord);
        //modelAndView.setViewName("studentAcademicRecord");
        log.info("Exit searchRecord");
        return "studentAcademicRecord";
    }
*/
    }
