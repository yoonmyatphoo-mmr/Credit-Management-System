<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
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
        body {
            background-color: rgba(142, 150, 224, 0);
        }

        .container1 {
            display: inline-block;
        }

        .text {
            letter-spacing: 2px;
            border-right: 5px solid;
            width: 100%;
            white-space: nowrap;
            overflow: hidden;
            animation: typing 3s steps(10),
            cursor .4s step-end infinite alternate;
        }

        @keyframes cursor {
            50% {
                border-color: transparent;
            }
        }

        @keyframes typing {
            from {
                width: 0
            }
        }

        /* for welcome page text style */

        :root {
            --headingSize: 55px;
            --background-color: black;
        }

        .container3 {
            width: 50%;
        }

        span {
            display: inline-block;
            overflow: hidden;
            animation: .4s swift-up ease-in-out forwards;
        }

        i {
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

        @media screen and (max-width: 1000px) {
            .container {
                width: auto;
                margin: 0 10%;
            }

            :root {
                --headingSize: 35px;
            }
        }

        /* scroll css */
        .scrollx {
            overflow-x: scroll;
        }
    </style>
</head>
<body>
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
            <a class="navbar-brand mt-2 mt-lg-0 ps-3" href="#">
                <img src="img/uni.png" alt="Logo" width="50" height="50" class="d-inline-block align-text-top">
                <span class="fs-6">University Of Computer Stuides(Taunggyi)</span>
            </a>
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Pages</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Academics</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Courses</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">University Life</a>
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
                                <label for="" class="form-label fw-bold">Email</label>
                                <input type="text" name="email" id="email" class="form-control rounded-4"
                                       placeholder="Email" aria-describedby="helpId">
                                <!-- <small id="helpId" class="text-muted">Help text</small> -->
                            </div>
                            <div class="form-group px-4 my-3">
                                <label for="" class="form-label fw-bold">Password</label>
                                <input type="password" name="password" id="password" class="form-control rounded-4"
                                       placeholder="Create a password" aria-describedby="helpId">
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
<div class="container">
    <div
            class="bg-image"
            style="
    background-image: url('img/ourUni2.jpg');
    height: 75vh;
  "
    >
        <div class="mask" style="background-color: rgba(142, 150, 224, 0.3); height: 75vh;">
            <div class="d-flex justify-content-center align-items-center h-100">
                <!-- start styling 1 -->
                <div class="container3">
                    <h1 class="swift-up-text text-white">Welcome to University of Computer Studies, Taunggyi.
                    </h1>
                </div>
                <!-- end styling 1 -->

            </div>
        </div>
    </div>
</div>
<!-- Background image -->
<!-- bg image welcome end -->

<div class="container">
    <div class="row border my-3 p-3">
        <div class="col-lg-6" style="background-image: url(img/CardBG2.avif);">
            <span class="fs-3 text-dark">Check your credits?</span><br>
            <span class="fs-4 text-success">Spring 2023 exam results are now open</span><br>
            <span class="fs-5">The exam results of the students who are already enrolled in each terms from first year to final year are all out. Please Login first.</span>
            <br><br>
            <button type="button" class="btn btn-success mb-3" data-mdb-toggle="modal" data-mdb-target="#exampleModal">
                Login
            </button>
        </div>
        <div class="col-lg-6" style="background-image: url(img/CardBG2.avif);">
            <span class="fs-3 text-dark">How Credit System Work?</span><br>
            <span class="fs-4 text-danger">Spring 2023 applications are still close</span><br>
            <span class="fs-5">Read how credit system work for better understanding of your credits and how marks are distributed based on exam, tutorials and assignments. </span>
            <br><br>
            <button type="button" class="btn btn-success mb-3">
                <a href="#read" style="text-decoration: none; color:white;">Read</a>
            </button>
        </div>
    </div>
</div>

<div class="container">
    <div class="row my-3">
        <div class="col">
            <span class="fs-3 text-success">Credit System of</span><br>
            <span class="fs-2 fw-bold text-dark">University of Computer Studies(Taunggyi)</span><br>
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
    <h3>Grade Result and Credit Example</h3><br>
</div>

<div class="read-how-credit-work" id="read">

    <!-- table responsive -->
    <div class="container scrollx border">
        <h4>Grades and marks</h4>
        <table class="table table-sm table-bordered align-middle mb-0 bg-white" style="height: 400px;">
            <thead class="bg-light">
            <tr>
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
                <td>Grade Point < 2</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="container">

        If student gets the following marks in first semester <br>

        Total mark obtained 100% include Exam+ Tutorial+ lab+ Assignment+ project+ presentation + Attendance
    </div>


    <!-- table responsive -->
    <div class="container scrollx border">
        <h4>Example First Semester Result</h4>
        <table class="table table-sm table-bordered align-middle mb-0 bg-white">
            <thead class="bg-light">
            <tr>
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
                <td>9
            </tr>
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

    <div class="container">
        After Semester I, student’s cumulative GPA is 3.00.
        <br>
        Cumulative GPA = Total Grade point /total credit unit <br>

        Overall GPA = ∑ Cumulative GPA for each semester /total semester
        <br>
        Student gets the following marks in semester II <br>
    </div>


    <!-- table responsive -->
    <div class="container scrollx border">
        <h4>Example Second Semester Result</h4>
        <table class="table table-sm table-bordered align-middle mb-0 bg-white">
            <thead class="bg-light">
            <tr>
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
                <td>9
            </tr>
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


    <div class="container">
        After Semester II, student’s cumulative GPA is 2.72 and Overall GPA is 2.86.
    </div>
</div>
<!-- footer start -->
<footer class="bg-light text-center text-white">
    <!-- Grid container -->
    <div class="container p-4 pb-0">
        <!-- Section: Social media -->
        <section class="mb-4">
            <!-- Facebook -->
            <a
                    class="btn text-white btn-floating m-1"
                    style="background-color: #3b5998;"
                    href="#!"
                    role="button"
            ><i class="fab fa-facebook-f"></i
            ></a>

            <!-- Twitter -->
            <a
                    class="btn text-white btn-floating m-1"
                    style="background-color: #55acee;"
                    href="#!"
                    role="button"
            ><i class="fab fa-twitter"></i
            ></a>

            <!-- Google -->
            <a
                    class="btn text-white btn-floating m-1"
                    style="background-color: #dd4b39;"
                    href="#!"
                    role="button"
            ><i class="fab fa-google"></i
            ></a>

            <!-- Instagram -->
            <a
                    class="btn text-white btn-floating m-1"
                    style="background-color: #ac2bac;"
                    href="#!"
                    role="button"
            ><i class="fab fa-instagram"></i
            ></a>

            <!-- Linkedin -->
            <a
                    class="btn text-white btn-floating m-1"
                    style="background-color: #0082ca;"
                    href="#!"
                    role="button"
            ><i class="fab fa-linkedin-in"></i
            ></a>
            <!-- Github -->
            <a
                    class="btn text-white btn-floating m-1"
                    style="background-color: #333333;"
                    href="#!"
                    role="button"
            ><i class="fab fa-github"></i
            ></a>
        </section>
        <!-- Section: Social media -->
    </div>
    <!-- Grid container -->

    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgb(51, 48, 48);">
        © 2020 Copyright:
        <a class="text-white" href="#">University of Computer Studies(Taunggyi)'s Credit System</a>
    </div>
    <!-- Copyright -->
</footer>
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