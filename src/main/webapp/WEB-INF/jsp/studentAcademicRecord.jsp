<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="./assets/img/apple-icon.png">
  <!-- <link rel="icon" type="image/png" href="./assets/img/favicon.png"> -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Student Academic Record
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
<style>
    td,th{
        text-align: center;
    }
</style>
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
           <%-- <li class="nav-item">
              <a class="nav-link" href="javascript:;">
                  <i class="fa-solid fa-user-graduate"></i>
                <p>Student Information</p>
              </a>
            </li>--%>
            <li class="nav-item">
              <a class="nav-link" href="/addSubject">
                <i class="nc-icon nc-pin-3"></i>
                <p>Add Subject</p>
              </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/studentRecord">
                    <i class="fa-solid fa-user-graduate"></i>
                  <p>Student Record</p>
                </a>
              </li>
            <li class="nav-item">
                <a class="nav-link" href="/searchRecord">
                  <i class="nc-icon nc-pin-3"></i>
                  <p>Search Record</p>
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
            
            <a class="navbar-brand" href="javascript:;">Student Academic Record</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
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
                    <div class="d-lg-none btn col-md-5 text-start"><i class="fa-solid fa-users mr-2"></i>User Accounts</div>
                </li>
                <li class="nav-item btn-rotate">
                    <div class="d-lg-none btn col-md-5 text-start"><i class="fa-solid fa-user-graduate me-2"></i>Student Information</div>
                </li>
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
           <%-- <%
            int totalrollcall = Integer.parseInt(request.getParameter("totalrollcall"));
            int attendence = Integer.parseInt(request.getParameter("attendence"));
            int tuto = Integer.parseInt(request.getParameter("tuto"));
            int tutoAttend = Integer.parseInt(request.getParameter("tutoAttend"));
            int marks = Integer.parseInt(request.getParameter("marks"));
            
            int rc_credit = (attendence*2)/totalrollcall;
            int tuto_credit = (tutoAttend*1)/tuto;
            double gradescore=0;
            double gradepoint;
            
            int credit = rc_credit+tuto_credit;
            String grade = "";
        	if(marks>90){
        		grade="A+";
        		gradescore=4;
        		
        	}else if(marks>89 & marks<90){
        		grade="A";
        		gradescore=4;  
        	}else if(marks>75 & marks<79){
        		grade="-A";
        		gradescore=3.67;
        	}else if(marks>70 & marks<74){
        		grade="B+";
        		gradescore=3.33;
        	}else if(marks>65 & marks<69){
        		grade="B";
        		gradescore=3.0;
        	}else if(marks>60 & marks<64){
        		grade="B-";
        		gradescore=2.67;
        	}else if(marks>55 & marks<59){
        		grade="C+";
        		gradescore=2.33;
        	}else if(marks>50 & marks<54){
        		grade="C";
        		gradescore=2;
        	}else if(marks>40 & marks<49){
        		grade="D";
        		gradescore=1.0;
        	}else if(marks>0 & marks<39){
        		grade="F";
        		gradescore=0.0;
        	}
        	gradepoint=gradescore*credit;
        	
        	System.out.print("<h3>"+credit+" "+gradescore+" "+gradepoint+"</h3>");
            %>--%>

            <div class="container bg-white col-md-12 mb-10 shadow-sm bg-opacity-75 p-5">


                <table border="1">
                    <tr>
                        <td colspan="2"><img src="./assets/img/ucstgi.png"  style="padding-left: 20px; padding-right: 100px;"></td>
                       <td colspan="4" style="padding-left: 0px; padding-right: 200px;"><h4>Republic of The Union of Myanmar</h4>
                        <h5>Ministry of Science and Technology</h5>
                        <h5>University of Computer Studies(Taunggyi)</h5>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="6"><hr>First Semester(GPA Sheet)<hr></th>
                    </tr>

                    <tr>
                        <th>Subject Code</th><th>Subject</th><th>Credit Unit</th><th>Grade</th>
                        <th>Grade Score</th><th>Grade Point</th>
                    </tr>

                    <c:forEach items="${showResult}" var="e">
                    <tr>
                        <td>CST_3131</td>
                        <td>Computer Architecture</td>
                        <td><c:out value = "${e.credit_unit1}"/></td>
                        <td><c:out value = "${e.grade1}"/></td>
                        <td><c:out value="${e.grade_score1}"/> </td>
                        <td><c:out value="${e.grade_point1}"/> </td>
                    </tr>

                    <tr>
                        <td>CST_3141</td>
                        <td>Numerical Analysis</td>
                        <td><c:out value = "${e.credit_unit2}"/></td>
                        <td><c:out value = "${e.grade2}"/></td>
                        <td><c:out value = "${e.grade_score2}"/></td>
                        <td><c:out value = "${e.grade_point2}"/></td>
                    </tr>
                    <tr>
                        <td>CST_3113</td>
                        <td>Artificial Intelligence</td>
                        <td><c:out value = "${e.credit_unit3}"/></td>
                        <td><c:out value = "${e.grade3}"/></td>
                        <td><c:out value = "${e.grade_score3}"/></td>
                        <td><c:out value = "${e.grade_point3}"/></td>
                    <tr>
                        <td>CST_3124</td>
                        <td>Software Analysis and Desing</td>
                        <td><c:out value = "${e.credit_unit4}"/></td>
                        <td><c:out value = "${e.grade4}"/></td>
                        <td><c:out value = "${e.grade_score4}"/></td>
                        <td><c:out value = "${e.grade_point4}"/></td>
                    </tr>
                    <tr>
                        <td>CST_3125</td>
                        <td>Database Management System</td>
                        <td><c:out value = "${e.credit_unit5}"/></td>
                        <td><c:out value = "${e.grade5}"/></td>
                        <td><c:out value = "${e.grade_score5}"/></td>
                        <td><c:out value = "${e.grade_point5}"/></td>
                    </tr>
                    <tr>
                        <td>CST_3156</td>
                        <td>Web Development PHP</td>
                        <td><c:out value = "${e.credit_unit6}"/></td>
                        <td><c:out value = "${e.grade6}"/></td>
                        <td><c:out value = "${e.grade_score6}"/></td>
                        <td><c:out value = "${e.grade_point6}"/></td>
                    </tr>
                    <tr>
                        <td>CST_3157</td>
                        <td>Financial Management & Accounting</td>
                        <td><c:out value = "${e.credit_unit7}"/></td>
                        <td><c:out value = "${e.grade7}"/></td>
                        <td><c:out value = "${e.grade_score7}"/></td>
                        <td><c:out value = "${e.grade_point7}"/></td>
                    </tr>

                    <tr>
                        <th colspan="2"><hr>Total Credit Unit</th>
                        <th><hr>18</th>
                        <th colspan="2"><hr>Total Grade Point</th>
                        <th><hr>67.98</th>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <th colspan="2"><hr>GPA</th>
                        <th><hr>3.78</th>
                    </tr>
                    </c:forEach>
                    <tr>
                        <th colspan="6"><hr>Second Semester(GPA Sheet)<hr></th>
                    </tr>
                    <tr>
                        <th>Subject Code</th><th>Subject</th><th>Credit Unit</th><th>Grade</th>
                        <th>Grade Score</th><th>Grade Point</th>
                    </tr>
                    <tr>
                        <td>CST-3131</td><td>Computer Architecture & Organization</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>
                    <tr>
                        <td>CST-3142</td><td>Numerical Analysis</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>
                    <tr>
                        <td>CST-3131</td><td>Artificial Intelligence</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>
                    <tr>
                        <td>CS_3124</td><td>Software Analysis and Design</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>
                    <tr>
                        <td>CS-3125</td><td>Database Management System</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>
                    <tr>
                        <td>CS-3156</td><td>Skill & Knowledge Web Development</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>
                    <tr>
                        <td>Cs-3157</td><td>English</td><td>3</td><td>A</td><td>4</td><td>12</td>
                    </tr>

                    <tr>
                        <th colspan="2"><hr>Total Credit Unit</th>
                        <th><hr>18</th>
                        <th colspan="2"><hr>Total Grade Point</th>
                        <th><hr>67.98</th>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;</td>
                        <th colspan="2"><hr>GPA</th>
                        <th><hr>3.78</th>
                    </tr>
                    <tr>
                        <td colspan="3">&nbsp;
                        </td>
                        <th colspan="2"><hr>Cumulative GPA</th>
                        <th><hr>3.86</th>
                    </tr>
                    <tr>
                        <th colspan="3">Grade Description</th>
                        <td colspan="3">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>A+(>90)</td>
                        <td>A(90-89)</td>
                        <td>A-(75-79)</td>
                        <td>B+(70-74)</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>B(65-69)</td>
                        <td>B-(60-64)</td>
                        <td>C+(55-59)</td>
                        <td>C(50-54)</td>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <th colspan="3">&nbsp;</th>
                        <th colspan="3">Head of Academic</th>
                    </tr>
                    <tr>
                        <th colspan="3">&nbsp;</th>
                        <th colspan="3">University of Computer Studies Taunggyi</th>
                    </tr>
                    </table>
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

  
</body>

</html>