<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/1.5.2/css/perfect-scrollbar.min.css"/>
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
                                <label for="name" class="mb-1">Student Name</label>
                                <input path="name" type="text" id="name" name="name"
                                       class="form-control"
                                       placeholder="Enter student name...">
                            </div>
                            <div class="col-md-10 offset-1 mb-3">
                                <label for="studentIdentity" class="mb-1">Student ID</label>
                                <input path="studentIdentity" type="text" id="studentIdentity" name="studentIdentity"
                                       class="form-control"
                                       placeholder="Enter student ID...">
                            </div>
                            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.perfect-scrollbar/1.5.2/perfect-scrollbar.min.js"></script>
                            <input type="hidden" name="semester" id="semesterId">
                            <input type="hidden" name="major" id="majorId">

                            <script>
                                $.ajax({
                                    type: "GET",
                                    url: "/getRequireData",
                                    dataType: "json",
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
                                            semesterSelect.append("<option value='" + semester.id + "'>" + semester.semester + "</option>");
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
                                <select path="year" name="year" class="form-control" id="year">
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
                            <input type="hidden" name="subjectName" id="subjectName" value="">
                            <script>
                                $(document).ready(function () {
                                    $("#year, #semester, #major").change(function () {
                                        var selectedYearId = $("#year").val();
                                        var selectedSemesterId = $("#semester").val();
                                        var selectedMajorId = $("#major").val();

                                        $("#majorId").val(selectedMajorId);
                                        $("#semesterId").val(selectedSemesterId);
                                        $("#subjectName").val("");
                                        $.ajax({
                                            type: "GET",
                                            url: "/getSubjectList",
                                            dataType: "json",
                                            data: {
                                                yearId: selectedYearId,
                                                semesterId: selectedSemesterId,
                                                majorId: selectedMajorId
                                            },
                                            success: function (subjectNames) {
                                                console.log(subjectNames);
                                                if (subjectNames.length === 0) {
                                                    console.log("No subjects available for the selected year, semester, and major.");
                                                } else {
                                                    // code to populate the subject list
                                                    console.log("subjectNames",subjectNames);
                                                }
                                                var subjectListDiv = $("#subjectList");
                                                subjectListDiv.empty();
                                                var select = $("<select id='subjectSelect' name='subjectSelect'></select>");
                                                var option = $("<option></option>").attr("value", "").text("Select a subject");
                                                select.append(option);
                                                $.each(subjectNames, function (index, subjectName) {
                                                    option = $("<option></option>").attr("value", subjectName).text(subjectName);
                                                    select.append(option);
                                                });
                                                select.change(function () {
                                                    var index = $(this).prop("selectedIndex");
                                                    if (index === 0) {
                                                        // if "Select a subject" is selected, clear the contents of the subjectDiv
                                                        $("#subjectDiv").empty();
                                                        $("#subjectName").val("");
                                                    } else {
                                                        // if a subject is selected, call the function to display its details
                                                        myFunction2(index, subjectNames[index-1]);
                                                        $("#subjectName").val(subjectNames[index-1]);
                                                    }
                                                });
                                                subjectListDiv.append(select);
                                            },
                                            error: function () {
                                                console.log("Failed to fetch subject list data from server.");
                                            }
                                        });
                                    });
                                });
                            </script>
                            <div class="col-md-10 offset-1 mb-3">
                                <label for="subjectSelect" class="mb-1">Subject</label>
                                <div path="subjectName" id="subjectList"></div>
                            <div class="col-md-10 offset-1 mb-3" id="subjectDiv"></div>

                            <hr>
                            <div id="myDIV1">

                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="creditUnit" class="mb-1">Credit Unit</label>
                                    <input path="creditUnit" type="number" id="creditUnit" name="creditUnit"
                                           class="form-control"
                                           placeholder="Enter Credit Unit...">
                                </div>
                              <div class="col-md-10 offset-1 mb-3">
                                    <label for="mark" class="mb-1">Mark</label>
                                    <input path="mark" type="number" id="mark"
                                           name="mark" class="form-control"
                                           placeholder="Enter Mark...">
                                </div>
                               <%-- <div class="col-md-10 offset-1 mb-3">
                                    <label for="gradeScore" class="mb-1">Grade Score</label>
                                    <input path="gradeScore" type="number" id="gradeScore" name="gradeScore"
                                           class="form-control"
                                           placeholder="Enter Grade Score...">
                                </div>
                                <div class="col-md-10 offset-1 mb-3">
                                    <label for="gradePoint" class="mb-1">Grade Point</label>
                                    <input path="gradePoint" type="number" id="gradePoint"
                                           name="gradePoint" class="form-control"
                                           placeholder="Enter Grade Point...">
                                </div--%>
                            </div>

                            <div class="col-md-8 col-lg-10 offset-1">
                                <input type="submit" value="Add Record" class="btn btn-success mt-3">
                            </div>
                        </form>
                    </div>


                </div>
            </div>
        </div>
    </div>
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
    d1.style.display = "none";
   function myFunction2(n) {
        if (n == 1) {
            d1.style.display = "block";
        }

    }

</script>

</body>

</html>