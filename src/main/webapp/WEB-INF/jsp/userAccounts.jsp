<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <!-- <link rel="icon" type="image/png" href="./assets/img/favicon.png"> -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    User Accounts
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="./assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="./assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="./assets/demo/demo.css" rel="stylesheet" />
  <!-- bootstrap css  -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <!-- fontawesome  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
            <li class="active nav-item"> 
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
          <%--  <li class="nav-item">
                <a class="nav-link" href="/addSubject">
                    <i class="fa-solid fa-user-graduate"></i>
                    <p>View Subjects</p>
                </a>
            </li>--%>
            <li class="nav-item">
              <a class="nav-link" href="/studentRecord">
                  <i class="fa-solid fa-user-graduate"></i>
                <p>Add Student's Record</p>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/searchRecord">
                <i class="nc-icon nc-zoom-split"></i>
                <p>Search Records</p>
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/viewStudent">
                    <i class="nc-icon nc-zoom-split"></i>
                    <p>View Student Datas</p>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/viewSubject">
                    <i class="nc-icon nc-zoom-split"></i>
                    <p>View Subject List</p>
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
            
            <a class="navbar-brand" href="userAccounts.html">User Accounts</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <ul class="navbar-nav">
                <li class="nav-item btn-rotate">
                    <div class="text-success d-lg-none btn col-md-5 text-end"><i class="fa-solid fa-users mr-2"></i>User Accounts</div>
                </li>
                <li class="nav-item btn-rotate">
                    <div class="text-success d-lg-none btn col-md-5 text-end"><i class="fa-solid fa-user-graduate me-2"></i>Student Information</div>
                </li>
                <li class="nav-item btn-rotate">
                    <div class="text-success d-lg-none btn col-md-5 text-end"><i class="fa-solid fa-user-graduate me-2"></i>Student Information</div>
                </li>
                <li class="nav-item btn-rotate">
                    <div class="text-success d-lg-none btn col-md-5 text-end"><i class="fa-solid fa-user-graduate me-2"></i>Student Information</div>
                </li>
                <li class="nav-item btn-rotate">
                    <div class="text-success d-lg-none btn col-md-5 text-end"><i class="fa-solid fa-user-graduate me-2"></i>Student Information</div>
                </li>
                <li class="nav-item btn-rotate">
                    <div class="text-success d-lg-none btn col-md-5 text-end"><i class="fa-solid fa-user-graduate me-2"></i>Student Information</div>
                </li>
              <li class="nav-item btn-rotate dropdown text-end">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa-solid fa-user"></i>
                  <p>
                    <span class="text-success d-lg-none d-md-block">Options</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="/profile">Profile</a>
                  <a class="dropdown-item" href="/creditLogin">Logout</a>
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
                <form action="/saveUserData", method="post" modelAttribute="saveUserData">
                    <div id="just-show">
                        <c:if test="${not empty successMessage}">
                            <div id="successMessage" class="alert alert-success" role="alert">${successMessage}</div>
                        </c:if>
                        <c:if test="${not empty studentIdError}">
                            <div id="studentIdError" class="alert alert-danger" role="alert">${studentIdError}</div>
                        </c:if>
                        <c:if test="${not empty teacherIdError}">
                            <div id="teacherIdError" class="alert alert-danger" role="alert">${teacherIdError}</div>
                        </c:if>
                        <c:if test="${not empty serverError}">
                            <div id="errorMessage" class="alert alert-danger" role="alert">${serverError}</div>
                        </c:if>
                </div>

                    <div class="col-md-10 offset-1 mb-3">
                        <label for="name" class="mb-1">User Name</label>
                        <input path="name" required type="text" id="name" name="name" class="form-control"
                            placeholder="Enter user name...">
                    </div>
                    <div class="col-md-10 offset-1 mb-3">
                        <label for="email" class="mb-1">Email</label>
                        <input path="email" required type="email" id="email" name="email" class="form-control"
                            placeholder="Enter user's email...">
                    </div>
                    <div class="col-md-10 offset-1 mb-3">
                        <label for="phoneNo" class="mb-1">Phone Number</label>
                        <input path="phoneNo" required type="text" id="phoneNo" name="phoneNo" class="form-control"
                            placeholder="Enter user's phone number...">
                    </div>
                    <div class="col-md-10 offset-1 mb-3">
                        <label for="address" class="mb-1">Address</label><br>
                        <textarea path="address" required name="address" id="address" cols="60" rows="10" class="form-control" placeholder="Enter user's address..."></textarea>
                    </div>

                    <div class="col-md-10 offset-1 mb-3">
                      <%--@declare id="usertype"--%><label  path="userType" for="userType" class="mb-1">Role</label>
                     
                      <input path="userType" type="radio" name="userType" value="student"
                      onclick="myFunction2(0)"/> Student
                      <input path="userType"  type="radio" name="userType" value="teacher"
                      onclick="myFunction2(1)"/> Teacher
                  </div>

                    <div id="myDIV1">
                      <div class="col-md-10 offset-1 mb-3">
                        <label for="studentId" class="mb-1">Student ID</label>
                        <input path="studentId" type="text" id="studentId" name="studentId" class="form-control"
                            placeholder="Enter student ID...">
                    </div>
                    <div class="col-md-10 offset-1 mb-3">
                      <label for="majorId" class="mb-1">Major</label>
                      <select id="majorId" path="majorId" name="majorId" class="form-control" id="majorId">
                        <option value="Computer Science">Computer Science</option>
                        <option  value="Computer Technology">Computer Technology</option>
                        <option value="Computer Science and Technology">Computer Science and Technology</option>
                      </select>
                  </div>
                  <div class="col-md-10 offset-1 mb-3">
                    <label for="yearId" class="mb-1">Year</label>
                    <select  name="yearId" path="yearId" name="yearId" class="form-control" id="yearId">
                      <option value="First Year">First Year</option>
                      <option value="Second Year">Second Year</option>
                      <option value="Third Year">Third Year</option>
                      <option value="Fourth Year">Fourth Year</option>
                      <option value="Fifth Year">Fifth Year</option>
                    </select>
                </div>
                <div class="col-md-10 offset-1 mb-3">
                  <label for="semesterId" class="mb-1">Semester</label>
                  <select path="semesterId" name="semesterId" class="form-control" id="semesterId">
                    <option value="First Semester">First Semester</option>
                    <option value="Second Semester">Second Semester</option>
                    </select>
              </div>
              </div>


              <div id="myDIV2">
                <div class="col-md-10 offset-1 mb-3">
                  <label for="teacherId" class="mb-1">Teacher ID</label>
                  <input  path="teacherId" type="text" id="teacherId" name="teacherId" class="form-control"
                      placeholder="Enter teacher ID...">
              </div>
                <div class="col-md-10 offset-1 mb-3">
                  <label for="position" class="mb-1">Position Name</label>
                  <input path="position" name="position" type="text" id="position" name="position" class="form-control"
                      placeholder="Enter position name...">
              </div>
              <div class="col-md-10 offset-1 mb-3">
                <label for="deptName" class="mb-1">Department Name</label>
                <input path="deptName" type="text" id="deptName" name="deptName" class="form-control"
                    placeholder="Enter department name...">
            </div>
           
           
          </div>


          <div id="myDIV3">
           
    </div>
          <div class="col-md-8 col-lg-10 offset-1">
              <input type="submit" value="Register" class="btn btn-success mt-3">
             <%-- <button id="register" onclick="message()" value="Register" class="btn btn-success mt-3"></butt--%>
                   <%-- <div class="message">
                        <div class="success"id="success">Successfully save!</div>
                        <div class="danger" id="danger">Fields can't be empty</div>
                    </div>--%>

                </form>

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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

  <script>
    /*  function message(){

          var Name = document.getElementById("name");
          var email = document.getElementById("email");
          var phoneNo = document.getElementById("phoneNo");
          var address = document.getElementById("adresss");
          var userType = document.getElementById("userType");
          var studentId= document.getElementById("studentId");
          var major = document.getElementById("major");
          var year = document.getElementById("year");
          var semester = document.getElementById("semester");
          var teacherId= document.getElementById("teacherId");
          var position = document.getElementById("position");
          var deptName = document.getElementById("deptName");

          const success = document.getElementById("success");
          const danger = document.getElementById("danger");

          if(name.value ===''|| email.value === '' || phoneNo.value === ''|| address.value === ''||
          userType.value === '' || studentId.value === '' || major.value === '' || year.value === ''||
          semester.value === '' || teacherId.value === '' || position.value === ''|| deptName.value===''){
              danger.style.display = 'block';
          }
          else{

              success.style.display
          }*/



    var x = document.getElementById("myDIV1");
    var y = document.getElementById("myDIV2");
    
  x.style.display="none";
  y.style.display="none";
  function myFunction2(n){
  if(n == 0){
  x.style.display = "block";
   y.style.display = "none";
   
  }
  if(n == 1){
  y.style.display = "block";
   x.style.display = "none";
  }
  if (n =="undefined") {
      y.style.display = "none";
      x.style.display = "none";
  }
  }
  </script>
</body>

</html>