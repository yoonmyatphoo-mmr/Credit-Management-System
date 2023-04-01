<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/1.5.2/css/perfect-scrollbar.min.css"/>
    <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
    <!-- <link rel="icon" type="image/png" href="./assets/img/favicon.png"> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>
        Student Record
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
          name='viewport'/>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="./assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet"/>
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="./assets/demo/demo.css" rel="stylesheet"/>
    <!-- bootstrap css  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <!-- fontawesome  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
          integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>

<body class="">
<div class="wrapper">
    <div class="sidebar" data-color="white" data-active-color="danger">
        <div class="logo">
            <a href="https://www.creative-tim.com" class="simple-text logo-mini">
                <!-- <div class="logo-image-small">
                  <img src="./assets/img/logo-small.png">
                </div> -->
                <!-- <p>CT</p> -->
            </a>
            <a href="https://www.creative-tim.com" class="simple-text logo-normal">
                <!-- <div class="logo-image-big">
                <img src="../assets/img/logo-big.png">
              </div> -->
                UCSTGI
            </a>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link" href="/userAccounts">
                        <i class="fa-solid fa-users"></i>
                        <p>User Accounts</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/addSubject">
                        <i class="fa-solid fa-user-graduate"></i>
                        <p>Add Subjects</p>
                    </a>
                </li>
                <li class="active nav-item">
                    <a class="nav-link" href="/studentRecord">
                        <i class="fa-solid fa-user-graduate"></i>
                        <p>Add Student's Record</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="searchRecord">
                        <i class="nc-icon nc-zoom-split"></i>
                        <p>Search Records</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel" style="height: auto;">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
            <div class="container-fluid">
                <div class="navbar-wrapper">

                    <a class="navbar-brand" href="studentRecord.html">Add Student Record</a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
                        aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                    <span class="navbar-toggler-bar navbar-kebab"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <form>
                        <div class="input-group no-border">
                            <input type="text" value="" class="form-control" placeholder="Search...">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <i class="nc-icon nc-zoom-split"></i>
                                </div>
                            </div>
                        </div>
                    </form>
                    <ul class="navbar-nav">
                        <li class="nav-item btn-rotate">
                            <div class="d-lg-none btn col-md-5 text-start"><i class="fa-solid fa-users mr-2"></i>User
                                Accounts
                            </div>
                        </li>
                        <li class="nav-item btn-rotate">
                            <div class="d-lg-none btn col-md-5 text-start"><i
                                    class="fa-solid fa-user-graduate me-2"></i>Student Information
                            </div>
                        </li>
                        <li class="nav-item btn-rotate dropdown">
                            <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa-solid fa-user"></i>
                                <p>
                                    <span class="d-lg-none d-md-block">Options</span>
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="row">
                <div class="col-md-12">
                    <!-- <h3 class="description">Your content here</h3> -->
                    <div class="container bg-white col-md-10 mb-5 shadow-sm bg-opacity-75 p-5">
                        <form action="/addStudentRecord" method="post" modelAttribute="addStudentRecord">
                            <div class="col-md-10 offset-1 mb-3">
                                <label for="studentName" class="mb-1">Student Name</label>
                                <input path="StudentName" type="text" id="StudentName" name="StudentName"
                                       class="form-control"
                                       placeholder="Enter student name...">
                            </div>
                            <div class="col-md-10 offset-1 mb-3">
                                <label for="studentId" class="mb-1">Student ID</label>
                                <input path="studentId" type="text" id="studentId" name="studentId" class="form-control"
                                       placeholder="Enter student ID...">
                            </div>
                            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/1.5.2/perfect-scrollbar.min.js"></script>
                            <script>
                                $.ajax({
                                    type: "GET",
                                    url: "/getRequireData",
                                    dataType: "json", // add this line
                                    success: function (response) {
                                        console.log(response);
                                        var yearSelect = $("#year");
                                        yearSelect.empty();
                                        yearSelect.append("<option value=''>Select a year...</option>");
                                        $.each(response.yearResponse.yearList, function (index, year) {
                                            yearSelect.append("<option value='" + year.id + "'>" + year.year + "</option>");
                                        });

                                        var semesterSelect = $("#semester");
                                        semesterSelect.empty();
                                        semesterSelect.append("<option value=''>Select a semester...</option>");
                                        $.each(response.semesterResponse.semesterList, function (index, semester) {
                                            semesterSelect.append("<option value='" + semester.id + "'>" + semester.description + "</option>");
                                        });

                                        var majorSelect = $("#major");
                                        majorSelect.empty();
                                        majorSelect.append("<option value=''>Select a major...</option>");
                                        $.each(response.majorResponse.majorList, function (index, major) {
                                            majorSelect.append("<option value='" + major.id + "'>" + major.major + "</option>");
                                        });
                                    },
                                    error: function () {
                                        console.log("Failed to fetch year list data from server.")
                                    }
                                });
                            </script>
                            <div class="col-md-10 offset-1 mb-3">

                                <label for="year" class="mb-1">Year</label>

                                <select path="year" class="form-control" id="year">
                                    <option value=''>Select a year...</option>
                                </select>

                            </div>

                            <div class="col-md-10 offset-1 mb-3">
                                <label for="semester" class="mb-1">Semester</label>
                                <select path="semester" class="form-control" id="semester">
                                    <option value=''>Select a semester...</option>
                                </select>
                            </div>
                            <div class="col-md-10 offset-1 mb-3">
                                <label for="major" class="mb-1">Major</label>
                                <select path="major" class="form-control" id="major">
                                    <option value=''>Select a major</option>

                                </select>
                            </div>
                            <script>
                                $(document).ready(function() {
                                    $("#year, #semester, #major").change(function() {
                                        var selectedYearId = $("#year").val();
                                        var selectedSemesterId = $("#semester").val();
                                        var selectedMajorId = $("#major").val();

                                        $.ajax({
                                            type: "GET",
                                            url: "/getSubjectList",
                                            dataType: "json",
                                            data: {
                                                yearId: selectedYearId,
                                                semesterId: selectedSemesterId,
                                                majorId: selectedMajorId
                                            },
                                            success: function(subjectNames) {
                                                console.log(subjectNames);
                                                var subjectListDiv = $("#subjectList");
                                                subjectListDiv.empty();
                                                $.each(subjectNames, function(index, subjectName) {
                                                    var radioButton = $("<input type='radio' name='subjectRadio' value='" + subjectName + "'>" + subjectName + "<br>");
                                                    radioButton.click(function() {
                                                        myFunction2(index+1);
                                                    });
                                                    subjectListDiv.append(radioButton);
                                                });
                                            },
                                            error: function() {
                                                console.log("Failed to fetch subject list data from server.");
                                            }
                                        });
                                    });
                                });
                            </script>
                            <div class="col-md-10 offset-1 mb-3">
                                <label for="subjectSelect" class="mb-1">Subject</label>
                                <div id="subjectList"></div>
                            </div>
                            <hr>
                            <%--<div class="col-md-10 offset-1 mb-3">
                                <label for="subjectSelect" class="mb-1">Subject</label>
                                <input type="radio" name="usertyperadio" value="student"
                                       onclick="myFunction2(1)"/> Subject 1 &nbsp;
                                <input type="radio" name="usertyperadio" value="teacher"
                                       onclick="myFunction2(2)"/> Subject 2 &nbsp;
                                <input type="radio" name="usertyperadio" value="teacher"
                                       onclick="myFunction2(3)"/> Subject 3 &nbsp;
                                <input type="radio" name="usertyperadio" value="teacher"
                                       onclick="myFunction2(4)"/> Subject 4 &nbsp; <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="usertyperadio" value="teacher"
                                       onclick="myFunction2(5)"/> Subject 5 &nbsp;
                                <input type="radio" name="usertyperadio" value="teacher"
                                       onclick="myFunction2(6)"/> Subject 6 &nbsp;
                                <input type="radio" name="usertyperadio" value="teacher"
                                       onclick="myFunction2(7)"/> Subject 7 &nbsp;
                            </div>
--%>
                            <div id="myDIV1">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall1" class="mb-1">Total Rollcall1</label>
                                    <input path="totalRollCall1" type="number" id="totalRollCall1" name="totalRollCall1"
                                           class="form-control"
                                           placeholder="Enter total totalRollCall1...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance1" class="mb-1">Total Attendence1</label>
                                    <input path="totalAttendance1" type="number" id="totalAttendance1"
                                           name="totalAttendance1" class="form-control"
                                           placeholder="Enter total attendance...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes1" class="mb-1">Total Tuto Test1</label>
                                    <input path="tutorialTimes1" type="number" id="tutorialTimes1" name="tutorialTimes1"
                                           class="form-control"
                                           placeholder="Enter total tutorial test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance1" class="mb-1">Total Tuto Attendence1</label>
                                    <input path="tutorialTotalAttendance1" type="number" id="tutorialTotalAttendance1"
                                           name="tutorialTotalAttendance1" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks1" class="mb-1">Total Marks1</label>
                                    <input path="totalMarks1" type="number" id="totalMarks1" name="totalMarks1"
                                           class="form-control"
                                           placeholder="Enter total marks...">
                                </div>
                            </div>

                            <div id="myDIV2">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall2" class="mb-1">Total Rollcall</label>
                                    <input path="totalRollCall2" type="number" id="totalRollCall2" name="totalRollCall2"
                                           class="form-control"
                                           placeholder="Enter total rollcall...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance2" class="mb-1">Total Attandence</label>
                                    <input path="totalAttendance2" type="number" id="totalAttendance2"
                                           name="totalAttendance2" class="form-control"
                                           placeholder="Enter total attendance...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes2" class="mb-1">Total Tuto Test</label>
                                    <input path="tutorialTimes2" type="number" id="tutorialTimes2" name="tutorialTimes2"
                                           class="form-control"
                                           placeholder="Enter total tuto test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance2" class="mb-1">Total Tuto Attendence</label>
                                    <input path="tutorialTotalAttendance2" type="number" id="tutorialTotalAttendance2"
                                           name="tutorialTotalAttendance2" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks2" class="mb-1">Total Marks</label>
                                    <input path="totalMarks2" type="number" id="totalMarks2" name="totalMarks2"
                                           class="form-control"
                                           placeholder="Enter total marks...">
                                </div>
                            </div>


                            <div id="myDIV3">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall3" class="mb-1">Total Rollcall</label>
                                    <input path="totalRollCall3" type="number" id="totalRollCall3" name="totalRollCall3"
                                           class="form-control"
                                           placeholder="Enter total rollcall...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance3" class="mb-1">Total Attendence</label>
                                    <input path="totalAttendance3" type="number" id="totalAttendance3"
                                           name="totalAttendance3" class="form-control"
                                           placeholder="Enter total attendance...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes3" class="mb-1">Total Tuto Test</label>
                                    <input path="tutorialTimes3" type="number" id="tutorialTimes3" name="tutorialTimes3"
                                           class="form-control"
                                           placeholder="Enter total tuto test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance3" class="mb-1">Total Tuto Attendence</label>
                                    <input path="tutorialTotalAttendance3" type="number" id="tutorialTotalAttendance3"
                                           name="tutorialTotalAttendance3" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks3" class="mb-1">Total Marks</label>
                                    <input path="totalMarks3" type="number" id="totalMarks3" name="totalMarks3"
                                           class="form-control"
                                           placeholder="Enter total marks...">
                                </div>
                            </div>


                            <div id="myDIV4">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall4" class="mb-1">Total Rollcall</label>
                                    <input paht="totalRollCall4" type="number" id="totalRollCall4" name="totalRollCall4"
                                           class="form-control"
                                           placeholder="Enter total rollcall...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance4" class="mb-1">Total Attendence</label>
                                    <input path="totalAttendance4" type="number" id="totalAttendance4"
                                           name="totalAttendance4" class="form-control"
                                           placeholder="Enter total attendance4...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes4" class="mb-1">Total Tuto Test</label>
                                    <input path="tutorialTimes4" type="number" id="tutorialTimes4" name="tutorialTimes4"
                                           class="form-control"
                                           placeholder="Enter total tuto test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance4" class="mb-1">Total Tuto Attendence</label>
                                    <input path="tutorialTotalAttendance4" type="number" id="tutorialTotalAttendance4"
                                           name="tutorialTotalAttendance4" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks4" class="mb-1">Total Marks</label>
                                    <input path="totalMarks4" type="number" id="totalMarks4" name="totalMarks4"
                                           class="form-control"
                                           placeholder="Enter total marks...">
                                </div>
                            </div>


                            <div id="myDIV5">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall5" class="mb-1">Total Rollcall</label>
                                    <input paht="totalRollCall5" type="number" id="totalRollCall5" name="totalRollCall5"
                                           class="form-control"
                                           placeholder="Enter total rollcall...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance5" class="mb-1">Total Attendence</label>
                                    <input path="totalAttendance5" type="number" id="totalAttendance5"
                                           name="totalAttendance5" class="form-control"
                                           placeholder="Enter total attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes5" class="mb-1">Total Tuto Test</label>
                                    <input path="tutorialTimes5" type="number" id="tutorialTimes5" name="tutorialTimes5"
                                           class="form-control"
                                           placeholder="Enter total tuto test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance5" class="mb-1">Total Tuto Attendence</label>
                                    <input path="tutorialTotalAttendance5" type="number" id="tutorialTotalAttendance5"
                                           name="tutorialTotalAttendance5" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks5" class="mb-1">Total Marks</label>
                                    <input path="totalMarks5" type="number" id="totalMarks5" name="totalMarks5"
                                           class="form-control"
                                           placeholder="Enter total narks...">
                                </div>
                            </div>


                            <div id="myDIV6">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall6" class="mb-1">Total Rollcall</label>
                                    <input path="totalRollCall6" type="number" id="totalRollCall6" name="totalRollCall6"
                                           class="form-control"
                                           placeholder="Enter total rollcall...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance6" class="mb-1">Total Attendence</label>
                                    <input path="totalAttendance6" type="number" id="totalAttendance6"
                                           name="totalAttendance6" class="form-control"
                                           placeholder="Enter total attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes6" class="mb-1">Total Tuto Test</label>
                                    <input path="tutorialTimes6" type="number" id="tutorialTimes6" name="tutorialTimes6"
                                           class="form-control"
                                           placeholder="Enter total tuto test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance6" class="mb-1">Total Tuto Attendence</label>
                                    <input path="tutorialTotalAttendance6" type="number" id="tutorialTotalAttendance6"
                                           name="tutorialTotalAttendance6" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks6" class="mb-1">Total Marks</label>
                                    <input path="totalMarks6" type="number" id="totalMarks6" name="totalMarks6"
                                           class="form-control"
                                           placeholder="Enter total marks...">
                                </div>
                            </div>

                            <div id="myDIV7">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalRollCall7" class="mb-1">Total Rollcall</label>
                                    <input path="totalRollCall7" type="number" id="totalRollCall7" name="totalRollCall7"
                                           class="form-control"
                                           placeholder="Enter total rollcall...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalAttendance7" class="mb-1">Total Attendence</label>
                                    <input path="totalAttendance7" type="number" id="totalAttendance7"
                                           name="totalAttendance7" class="form-control"
                                           placeholder="Enter total attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTimes7" class="mb-1">Total Tuto Test</label>
                                    <input path="tutorialTimes7" type="number" id="tutorialTimes7" name="tutorialTimes7"
                                           class="form-control"
                                           placeholder="Enter total tuto test...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="tutorialTotalAttendance7" class="mb-1">Total Tuto Attendence</label>
                                    <input path="tutorialTotalAttendance7" type="number" id="tutorialTotalAttendance7"
                                           name="tutorialTotalAttendance7" class="form-control"
                                           placeholder="Enter total tuto attendence...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="totalMarks7" class="mb-1">Total Marks</label>
                                    <input path="totalMarks7" type="number" id="totalMarks7" name="totalMarks7"
                                           class="form-control"
                                           placeholder="Enter total marks...">
                                </div>
                            </div>


                            <div class="col-md-8 col-lg-10 offset-1">
                                <input type="submit" value="Calculate" class="btn btn-success mt-3">
                            </div>
                        </form>
                    </div>


                </div>
            </div>
        </div>
    </div>
    <!-- <footer class="footer" style="position: absolute; bottom: 0; width: -webkit-fill-available;">
      <div class="container-fluid">
        <div class="row">
          <nav class="footer-nav">
            <ul>
              <li><a href="https://www.creative-tim.com" target="_blank">Creative Tim</a></li>
              <li><a href="https://www.creative-tim.com/blog" target="_blank">Blog</a></li>
              <li><a href="https://www.creative-tim.com/license" target="_blank">Licenses</a></li>
            </ul>
          </nav>
          <div class="credits ml-auto">
            <span class="copyright">
              © 2020, made with <i class="fa fa-heart heart"></i> by Creative Tim
            </span>
          </div>
        </div>
      </div>
    </footer> -->
</div>
</div>
<!--   Core JS Files   -->
<script src="./assets/js/core/jquery.min.js"></script>
<script src="./assets/js/core/popper.min.js"></script>
<script src="./assets/js/core/bootstrap.min.js"></script>
<script src="./assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chart JS -->
<script src="./assets/js/plugins/chartjs.min.js"></script>
<!--  Notifications Plugin    -->
<script src="./assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
<script src="./assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script>
<!-- Bootstrap Js  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>

<script>
    var d1 = document.getElementById("myDIV1");
    var d2 = document.getElementById("myDIV2");
    var d3 = document.getElementById("myDIV3");
    var d4 = document.getElementById("myDIV4");
    var d5 = document.getElementById("myDIV5");
    var d6 = document.getElementById("myDIV6");
    var d7 = document.getElementById("myDIV7");


    d1.style.display = "none";
    d2.style.display = "none";
    d3.style.display = "none";
    d4.style.display = "none";
    d5.style.display = "none";
    d6.style.display = "none";
    d7.style.display = "none";


    function myFunction2(n) {
        if (n == 1) {
            d1.style.display = "block";
            d2.style.display = "none";
            d3.style.display = "none";
            d4.style.display = "none";
            d5.style.display = "none";
            d6.style.display = "none";
            d7.style.display = "none";
        }
        if (n == 2) {
            d1.style.display = "none";
            d2.style.display = "block";
            d3.style.display = "none";
            d4.style.display = "none";
            d5.style.display = "none";
            d6.style.display = "none";
            d7.style.display = "none";
        }
        if (n == 3) {
            d1.style.display = "none";
            d2.style.display = "none";
            d3.style.display = "block";
            d4.style.display = "none";
            d5.style.display = "none";
            d6.style.display = "none";
            d7.style.display = "none";
        }
        if (n == 4) {
            d1.style.display = "none";
            d2.style.display = "none";
            d3.style.display = "none";
            d4.style.display = "block";
            d5.style.display = "none";
            d6.style.display = "none";
            d7.style.display = "none";
        }
        if (n == 5) {
            d1.style.display = "none";
            d2.style.display = "none";
            d3.style.display = "none";
            d4.style.display = "none";
            d5.style.display = "block";
            d6.style.display = "none";
            d7.style.display = "none";
        }
        if (n == 6) {
            d1.style.display = "none";
            d2.style.display = "none";
            d3.style.display = "none";
            d4.style.display = "none";
            d5.style.display = "none";
            d6.style.display = "block";
            d7.style.display = "none";
        }
        if (n == 7) {
            d1.style.display = "none";
            d2.style.display = "none";
            d3.style.display = "none";
            d4.style.display = "none";
            d5.style.display = "none";
            d6.style.display = "none";
            d7.style.display = "block";
        }
        if (n == "undefined") {
            d1.style.display = "none";
            d2.style.display = "none";
            d3.style.display = "none";
            d4.style.display = "none";
            d5.style.display = "none";
            d6.style.display = "none";
            d7.style.display = "none";
        }

    }
</script>

</body>

</html>