<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Font Awesome -->
<link
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
rel="stylesheet"
/>
<!-- Google Fonts -->
<link
href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
rel="stylesheet"
/>
<!-- MDB -->
<link
href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.css"
rel="stylesheet"
/>
<style>
  body{
    background-color: rgba(142, 150, 224, 0);
  }
  .container1{
      display: inline-block;
  }
  .text{
      letter-spacing: 2px;
      border-right: 5px solid;
      width: 100%;
      white-space: nowrap;
      overflow: hidden;
      animation:
          typing 3s steps(10),
          cursor .4s step-end infinite alternate;
  }
  @keyframes cursor{
      50% { border-color: transparent;}
  }
  @keyframes typing{
      from {width: 0}
  }

  /* for welcome page text style */

:root{
	--headingSize: 55px;
	--background-color: black;
}

.container3{
	width: 50%;
}

span{
  display: inline-block;
  overflow: hidden;
  animation: .4s swift-up ease-in-out forwards;
}

i{
  font-style: normal;
  position: relative;
  top: var(--headingSize);
  animation: .6s swift-up ease-in-out forwards;
}

@keyframes swift-up {
  to {
    top: 0;
  }
}

@media screen and (max-width: 1000px){
	.container{
		width: auto;
		margin: 0 10%;
	}

	:root{
		--headingSize: 35px;
	}
}
/* scroll css */
.scrollx{
  overflow-x: scroll;
}
</style>
</head>
<body class="bg-light">
    <!-- MDB -->
<script
type="text/javascript"
src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.0/mdb.min.js"
></script>
   <!-- Navbar -->
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
    <!-- Container wrapper -->
    <div class="container-fluid">
      <!-- Toggle button -->
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>

      <!-- Collapsible wrapper -->
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <!-- Navbar brand -->
        <a class="navbar-brand mt-2 mt-lg-0 ps-3" href="#home">
            <img src="${pageContext.request.contextPath}/assets/img/uni.png" alt="Logo" width="50" height="50" class="d-inline-block align-text-top">
            <span class="fs-6 fw-bold">University Of Computer Stuides(Taunggyi)</span>
        </a>
        <!-- Left links -->
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link" href="#home">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#about">About us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#read">Credit's workflow</a>
          </li>

        </ul>
        <!-- Left links -->
      </div>
      <!-- Collapsible wrapper -->

      <!-- Right elements -->
      <div class="d-flex align-items-center pe-3">
        <button type="button" class="btn btn-primary" data-mdb-toggle="modal" data-mdb-target="#exampleModal">
            Login
          </button>

      <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
  </nav>
  <!-- Navbar -->

  <!-- modal start -->
  <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">

            <i class="fa-solid fa-building-columns fa-2x"></i>
            <span class=" mx-3 fs-5">Welcome to UCST</span>
          <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
        </div>
      <div class="modal-body p-3">
        <div class="row">
          <div class="col-lg-10 offset-lg-1">
              <!-- <h1 class="fs-2 text-center">Welcome to Pinterest</h1> -->
            <form action="/creditLogin" , method="post" modelAttribute="login">
              <div class="form-group px-4">
                <label for="email" class="form-label fw-bold">Email</label>
                <input type="text" name="email" id="email" class="form-control rounded-4" placeholder="Email" aria-describedby="helpId">
                <!-- <small id="helpId" class="text-muted">Help text</small> -->
              </div>
              <div class="form-group px-4 my-3">
                <label for="password" class="form-label fw-bold">Password</label>
                <input type="password" name="password" id="password" class="form-control rounded-4" placeholder="Create a password" aria-describedby="helpId">
                <!-- <small id="helpId" class="text-muted">Help text</small> -->
              </div>
              <div class="form-group px-4">
                <div class="form-check my-3">
                    <input type="checkbox" name="" class="form-check-input" id="">
                    <label for="" class="form-check-label">Remember me</label>
                </div>
              </div>
              <div class="form-group px-4">
                  <div class="d-grid">
                      <button class="btn btn-success rounded-4 fw-bold">Login</button>
                  </div>
              </div>
              <div class="form-group  my-2 mb-5">
                <a href="#" class="fw- float-end "><u>Forgot password?</u></a>
            </div>
            </form>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
<!-- modal end -->


<!-- bg image welcome start -->
<!-- Background image -->
    <div class="container" id="home">
        <div
                class="bg-image"
                style="
    background-image: url('${pageContext.request.contextPath}/assets/img/ourUni2.jpg');

    height: 75vh;
  "
        >

  <div class="mask" style="background-color: rgba(22, 19, 19, 0); height: 75vh;">

    <div class="d-flex justify-content-center align-items-center h-100">
      <!-- start styling 1 -->
        <%--<div class="container3">
            <h1 class="text-white fw-bold">Welcome to University of Computer Studies, Taunggyi.
            </h1>
        </div>--%>
    <!-- end styling 1 -->

    </div>
  </div>
</div>
</div>
<!-- Background image -->
<!-- bg image welcome end -->

<div class="container mt-5 mb-5">
  <div class="row my-3 p-3 rounded-8 shadow-sm" style="background-image: url(img/CardBG2.avif);" >
    <div class="col-lg-6 ">
      <span class="fs-3 text-dark">Check your credits?</span><br>
      <span class="fs-4 text-success">Spring 2023 exam results are now open</span><br>
      <span class="fs-5">The exam results of the students who are already enrolled in each terms from first year to final year are all out. Please Login first.</span>
     <br><br>
     <button type="button" class="btn btn-primary mb-3"  data-mdb-toggle="modal" data-mdb-target="#exampleModal">
      Login
    </button>
    </div>
    <div class="col-lg-6" >
        <span class="fs-3 text-dark">How Credit System Work?</span><br>
        <span class="fs-4 text-danger">Spring 2023 applications are still close</span><br>
        <span class="fs-5">Read how credit system work for better understanding of your credits and how marks are distributed based on exam, tutorials and assignments. </span>
       <br><br>
       <button type="button" class="btn btn-primary mb-3">
        <a href="#read" style="text-decoration: none; color:white;">Read</a>
      </button>
    </div>
   </div>
</div>

<section class="shadow-sm container" id="about">
<div class="container">
  <div class="row my-3">
    <div class="col">
      <span class="fs-4 text-success d-block m-0 p-0">Credit System of</span>
      <span class="fs-2 fw-bold text-dark m-0 p-0 d-block border-bottom">University of Computer Studies(Taunggyi)</span><br>
      <span class="text- fs-4 fw-bold">Brief History</span><br>
            <span class="text- pp">
              The University of Computer Studies (Taunggyi) is situated in the Southern Shan State, Myanmar. The Government Computer College (Taunggyi) was established on August 15 in 2000. University of Computer Studies (Taunggyi) has been upgraded on 20th January 2007.
            </span><br>
            <span class="text- fs-4 fw-bold">Credit System</span><br>
            <span class="text- pp">
              The credit system in education is a standard used by universities to measure and assess students’ work and effort during their Bachelor's, Master's, or PhD programme.
            </span><br>
            <span class="text- fs-4 fw-bold">Aims and Objectives</span><br>
            <span class="text- pp">
              According to the Accreditation requirement, how many minimum credits must be in a degree program? I knew how many core (major) subjects and how many minor subjects should be. I have seen why CUs continue to adjust the credit units to match the accreditation.
            </span>
    </div>
  </div>
</div>
</section>

<section class="container shadow-sm mt-5 mb-5">

<div class="read-how-credit-work" id="read">
  <h3>Grade Result and Credit Example</h3><br>
<!-- table responsive -->
<div class="container scrollx border">
  <h4>Grades and marks</h4>
  <table class="table table-sm table-bordered align-middle mb-0 bg-white" style="height: 400px;">
    <thead class="bg-light">
      <tr >
        <th>No</th>
        <th>Marks</th>
        <th>Grade</th>
        <th>Grade Point</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>2</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>3</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>4</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>5</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>6</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>7</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>8</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>9</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>10</td>
        <td>>90</td>
        <td>A</td>
        <td>4</td>
      </tr>
      <tr>
        <td>Fail Grade</td>
        <td>&nbsp;</td>
        <td>C-,D,F</td>
        <td>Grade Point < 2 </td>
      </tr>
    </tbody>
  </table>
</div>
<br>
<div class="container">

  If student gets the following marks in first semester <br>

  Total mark obtained 100% include Exam+ Tutorial+ lab+ Assignment+ project+ presentation + Attendance
  </div>

<br>
<!-- table responsive -->
<div class="container scrollx border">
  <h4>Example First Semester Result</h4>
  <table class="table table-sm table-bordered align-middle mb-0 bg-white">
    <thead class="bg-light">
      <tr >
        <th>No</th>
        <th>Subjects</th>
        <th>Credit</th>
        <th>Total Marks</th>
        <th>Grade</th>
        <th>Grade Score</th>
        <th>Grade Point</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Eng</td>
        <td>3</td>
        <td>75</td>
        <td>B</td>
        <td>3</td>
        <td>9</tr>
      </tr>
      <tr>
        <td>3</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>6</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td colspan="2">Total Credit Unit</td>
        <td>16</td>
        <td>&nbsp;</td>
        <td colspan="2">Total Grade Point</td>
        <td>4.8</td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        <td colspan="2">Cumulative GPA for each semester</td>
        <td>3.00</td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        <td colspan="2">Overall GPA</td>
        <td>3.00</td>
      </tr>
    </tbody>
  </table>
</div>
<br>
<div class="container">
  After Semester I, student’s cumulative GPA is 3.00.
<br>
Cumulative GPA = Total Grade point /total credit unit <br>

Overall GPA = ∑ Cumulative GPA for each semester /total semester
<br>
Student gets the following marks in semester II <br>
  </div>
<br>

<!-- table responsive -->
<div class="container scrollx border">
  <h4>Example Second Semester Result</h4>
  <table class="table table-sm table-bordered align-middle mb-0 bg-white">
    <thead class="bg-light">
      <tr >
        <th>No</th>
        <th>Subjects</th>
        <th>Credit</th>
        <th>Total Marks</th>
        <th>Grade</th>
        <th>Grade Score</th>
        <th>Grade Point</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>2</td>
        <td>Eng</td>
        <td>3</td>
        <td>75</td>
        <td>B</td>
        <td>3</td>
        <td>9</tr>
      </tr>
      <tr>
        <td>3</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>4</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>5</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td>6</td>
        <td>Myanmar</td>
        <td>2</td>
        <td>70</td>
        <td>B</td>
        <td>2.75</td>
        <td>5.5</td>
      </tr>
      <tr>
        <td colspan="2">Total Credit Unit</td>
        <td>16</td>
        <td>&nbsp;</td>
        <td colspan="2">Total Grade Point</td>
        <td>4.8</td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        <td colspan="2">Cumulative GPA for each semester</td>
        <td>3.00</td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        <td colspan="2">Overall GPA</td>
        <td>3.00</td>
      </tr>
    </tbody>
  </table>
</div>

<br>
<div class="container">
  After Semester II, student’s cumulative GPA is 2.72 and Overall GPA is 2.86.
  </div>
</div>
</section>

<!-- footer start -->
<!-- Footer -->

<footer class="text-center text-lg-start bg-white text-muted">
  <!-- Section: Social media -->
  <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom bg-dark">
    <!-- Left -->
    <div class="me-5 d-none d-lg-block">
      <span>Get connected with us on social networks:</span>
    </div>
    <!-- Left -->

    <!-- Right -->
    <div>
      <a href="https://www.facebook.com/UCSTaunggyi/" class="me-4 link-secondary">
        <i class="fab fa-facebook-f"></i>
      </a>


    </div>
    <!-- Right -->
  </section>
  <!-- Section: Social media -->

  <!-- Section: Links  -->
  <section class="bg-dark">
    <div class="container text-center text-md-start">
      <!-- Grid row -->
      <div class="row pt-3">
        <!-- Grid column -->
        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
          <!-- Content -->
          <h6 class="text-uppercase fw-bold mb-4">
            Credit System
          </h6>
          <p>
            Here you can check your credits and grade if you are already a student. If you want to become
            our student, check our school official website. <a href="https://www.ucstgi.edu.mm/"> <u>Check here</u></a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            Pages
          </h6>
          <p>
            <a href="#!" class="text-reset">Home</a>
          </p>
          <p>
            <a href="#!" class="text-reset">About</a>
          </p>
          <p>
            <a href="#!" class="text-reset">Credit's workflow</a>
          </p>
          <p>
            <a href="#!" class="text-reset"></a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">
            More about Us
          </h6>

          <p>
            <a href="https://www.ucstgi.edu.mm/" class="text-reset">UCS(TGI)</a>
          </p>
          <p>
            <a href="https://www.ucstgi.edu.mm/category/news/" class="text-reset">Recent News</a>
          </p>
          <p>
            <a href="https://www.ucstgi.edu.mm/category/announcements/" class="text-reset">Announcements</a>
          </p>
          <p>
            <a href="https://www.ucstgi.edu.mm/category/activities/" class="text-reset">Activities</a>
          </p>
        </div>
        <!-- Grid column -->

        <!-- Grid column -->
        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
          <!-- Links -->
          <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
          <p><i class="fa-solid fa-location-dot me-2  "></i>Union Road,
Taunggyi Township,
Southern Shan State,
The Union of Myanmar</p>
          <p>
            <i class="fas fa-envelope me-3 text-secondary"></i>
            info@ucstgi.edu.mm
          </p>
          <p><i class="fas fa-phone me-3 text-secondary"></i> +95-81-2124765</p>
          <p><i class="fas fa-print me-3 text-secondary"></i> +95-81-2124196</p>
        </div>
        <!-- Grid column -->
      </div>
      <!-- Grid row -->
    </div>
  </section>
  <!-- Section: Links  -->

  <!-- Copyright -->
  <div class="text-center p-4 bg-dark" style="background-color: rgba(0, 0, 0, 0.025);">
    © 2023 Copyright:
    <a class="text-reset fw-bold" href="#">University of Computer Studies' third year students</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->
<!-- footer end -->

<script>
  const swiftUpElements = document.querySelectorAll('.swift-up-text');

swiftUpElements.forEach(elem => {

	const words = elem.textContent.split(' ');
	elem.innerHTML = '';

	words.forEach((el, index) => {
		words[index] = `<span><i>${words[index]}</i></span>`;
	});

	elem.innerHTML = words.join(' ');

	const children = document.querySelectorAll('span > i');
	children.forEach((node, index) => {
		node.style.animationDelay = `${index * .2}s`;
	});

});
</script>
</body>
</html>