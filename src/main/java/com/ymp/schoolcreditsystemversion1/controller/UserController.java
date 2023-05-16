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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.time.LocalDate;
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

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

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
    public String getAddSubject() {
        return "addSubject";
    }

    @GetMapping("/profile")
    public String getProfilePage() {
        return "profile";
    }

    @GetMapping("/changePassword")
    public String getChangePassword() {
        return "changePassword";
    }

    @GetMapping("/studentRecord")
    public String getStudentRecord() {
        return "studentRecord";
    }

    @GetMapping("/searchRecord")
    public String getSearchRecord() {

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

    @PostMapping(value = "/saveUserData")
    public String saveUserData(@ModelAttribute("saveUserData") UserTechStuData userModel, BindingResult result, Model model) {

        log.info("!!! Start saveUserData Method !!!");
        log.info("Request data: {}", userModel);

        try {
            if (result.hasErrors()) {
                return "userAccounts";
            }
            String response = userService.saveUserData(userModel);
            log.info("response: {}", response);

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
        Subject response = userService.insertSubject(subjectModel);
        log.info("subject: " + response);
        log.info("Exit insertSubject.....");
        if (response == null) {
            model.addAttribute("emptySubject", "Empty Subject!");
        } else if (response.getSubjectCode() != null && !response.getSubjectName().isEmpty()) {
            model.addAttribute("successSubject", response.getSubjectName() + " is successfully added!");
        } else {
            model.addAttribute("errorSubject", "Failed to add the subject.");
        }
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
        log.info("SubjectNames: {}", subjectNames);
        log.info("!!! Exit getSubjectList Method !!!");
        return ResponseEntity.ok().body(subjectNames);
    }

    @PostMapping("/addStudentRecord")
    public String addRecord(@ModelAttribute("addStudentRecord") @RequestBody StudentRecord studentRecord, Model model) {
        log.info("!!! Start addRecord Method !!!");
        String response = userService.addRecord(studentRecord);
        if (response.equals("existingRecord")) {
            model.addAttribute("existingRecord", studentRecord.getName() + "'s record exit in "+studentRecord.getYearId()+ " "+studentRecord.getSemesterId());
        }
        else if(response.equals("successMessage")) {
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

    @PostMapping("/viewStudent")
    public String viewStudentData(Model model, @RequestParam String yearId, @RequestParam String semesterId, @RequestParam String majorId) {
        log.info("Enter viewStudentData....");
        List<StudentDetail> studentDetailList = userService.viewStudentData(yearId, semesterId, majorId);
        log.info("StudentDataList: {}", studentDetailList);
        model.addAttribute("viewStudent", studentDetailList);
        model.addAttribute("selectedYearId", yearId);
        model.addAttribute("selectedSemesterId", semesterId);
        model.addAttribute("selectedMajorId", majorId);
        log.info("Exit viewStudentData.....");
        return "viewStudent";
    }

    @PostMapping("/viewSubject")
    public String viewSubjectData(Model model, @RequestParam String yearId, @RequestParam String semesterId, @RequestParam String majorId) {
        log.info("Enter viewSubjectData...");
        List<Subject> subjectList = userService.viewSubjectData(yearId, semesterId, majorId);
        log.info("SubjectList: {}", subjectList);
        model.addAttribute("viewSubject", subjectList);
        model.addAttribute("selectedYearId", yearId);
        model.addAttribute("selectedSemesterId", semesterId);
        model.addAttribute("selectedMajorId", majorId);
        log.info("Exit viewSubjectData..");
        return "viewSubject";
    }

    @GetMapping("/editStudent")
    public String editStudent(Model model, @RequestParam("studentIdentity") String studentIdentity,
                              @RequestParam("name") String name,
                              @RequestParam("yearId") String yearId,
                              @RequestParam("semesterId") String semesterId,
                              @RequestParam("majorId") String majorId) {
        log.info("Enter editStudent..");
        StudentDetail studentDetail = userService.editStudent(studentIdentity).get(0);
        studentDetail.setStudentIdentity(studentIdentity);
        studentDetail.setName(name);
        studentDetail.setYearId(yearId);
        studentDetail.setSemesterId(semesterId);
        studentDetail.setMajorId(majorId);
        model.addAttribute("studentDetail", studentDetail);
        model.addAttribute("selectedYearId", yearId);
        model.addAttribute("selectedSemesterId", semesterId);
        model.addAttribute("selectedMajorId", majorId);
        log.info("student: {}", studentDetail);
        log.info("Exit editStudent..");
        return "editStudent";
    }

    @GetMapping("/editSubject")
    public String editSubject(Model model, @RequestParam("id") Long id,
                              @RequestParam("subjectName") String subjectName,
                              @RequestParam("subjectCode") String subjectCode,
                              @RequestParam("yearId") String yearId,
                              @RequestParam("semesterId") String semesterId,
                              @RequestParam("majorId") String majorId) throws UnsupportedEncodingException {
        log.info("Enter editSubject Method..");
        Subject subject = userService.editSubject(id);
        model.addAttribute("subjectList", subject);
        model.addAttribute("id", id);
        model.addAttribute("subjectName", subjectName);
        model.addAttribute("subjectCode", subjectCode);
        model.addAttribute("selectedYearId", yearId);
        model.addAttribute("selectedSemesterId", semesterId);
        model.addAttribute("selectedMajorId", majorId);

        log.info("Exit editSubject Method..");
        return "editSubject";
    }

    @PostMapping("/saveSubject")
    public String saveSubject(Model model, @ModelAttribute("subject") Subject updatedSubject) {
        log.info("Enter saveSubject Method..");
        Subject existingSubject = userService.editSubject(updatedSubject.getId());
        existingSubject.setId((updatedSubject.getId()));
        existingSubject.setSubjectName(updatedSubject.getSubjectName());
        existingSubject.setSubjectCode(updatedSubject.getSubjectCode());
        existingSubject.setYearId(updatedSubject.getYearId());
        existingSubject.setSemesterId(updatedSubject.getSemesterId());
        existingSubject.setMajorId(updatedSubject.getMajorId());
        existingSubject.setUpdatedDate(Date.valueOf(LocalDate.now()));
        Subject savedSubject = userService.saveSubject(existingSubject);
        model.addAttribute("subject", savedSubject);
        model.addAttribute("successMessage", updatedSubject.getSubjectName() + " saved changes successfully.");
        log.info("Exit saveSubject Method..");
        return "editSubject";
    }


    @PostMapping("/saveStudent")
    public String saveStudent(Model model, @ModelAttribute("studentDetail") StudentDetail studentDetail, RedirectAttributes redirectAttributes) {
        log.info("Enter saveStudent method...");

        List<StudentDetail> existingStudentList = userService.getStudentByIdentity(studentDetail.getStudentIdentity());
        if (existingStudentList == null || existingStudentList.isEmpty()) {
            // student not found, handle error
            log.info("Exit saveStudent method: student not found");
            redirectAttributes.addFlashAttribute("errorMessage", "Student not found.");
            return "redirect:/error";
        }

        // update the existing student objects with the new values
        StudentDetail existingStudent = existingStudentList.get(0);
        existingStudent.setYearId(studentDetail.getYearId());
        existingStudent.setSemesterId(studentDetail.getSemesterId());
        existingStudent.setMajorId(studentDetail.getMajorId());
        StudentDetail updatedStudents = userService.saveStudent(existingStudent);

        log.info("updated: {}", updatedStudents);
        model.addAttribute("studentDetail", updatedStudents); // assuming only one student was updated
        model.addAttribute("successMessage", studentDetail.getStudentIdentity() + " saved changes successfully.");
        log.info("Exit saveStudent method");
        return "editStudent";
    }

    @PostMapping("/deleteStudent")
    public String deleteStudent(Model model, @RequestParam("studentIdentity") String studentIdentity) {
        log.info("Enter deleteStudent Method...");
        String response = userService.deleteStudent(studentIdentity);
        if (response.equals("empty")) {
            model.addAttribute("message", studentIdentity + " empty in studentList!");
        } else if (response.equals("doesn't exit")) {
            model.addAttribute("no_exit", studentIdentity + " doesn't exist in studentList!");
        } else if (response.equals("success")) {
            model.addAttribute("success", "Successfully deleted " + studentIdentity);
        }
        log.info("Exit deleteStudent Method...");
        return "viewStudent";
    }

    @PostMapping("/deleteSubject")
    public String deleteSubject(Model model, @RequestParam("id") Long id) {
        log.info("Enter deleteSubject Method...");
        String response = userService.deleteSubject(id);
        if (response.equals("empty")) {
            model.addAttribute("message", id + " empty in subjectList!");
        } else if (response.equals("doesn't exit")) {
            model.addAttribute("no_exit", id + " doesn't exist in subjectList!");
        } else if (response.equals("success")) {
            model.addAttribute("success", "Successfully deleted " + id);
        }
        log.info("Exit deleteStudent Method...");
        return "viewStudent";
    }


}
