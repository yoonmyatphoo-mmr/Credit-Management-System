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
    <title>Subject Page </title>

    <!-- Bootstrap Css link  -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <!-- fontawesome css link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />


</head>

<body>
<div class="row  m-4">
    <div class="col-3 text-center">
        <a href="/userAccounts">
            <button class="btn bg-dark text-white col-3 "><i class="fa-solid fa-arrow-left"></i> Back</button>
        </a>
    </div>
</div>

<div class="container-fluid d-flex justify-content-center">
    <div class="col-5 ">
        <div class="card shadow-sm">
            <div class="card-header">

                <h3> <i class="fa-solid fa-book me-1"></i> Subject Page </h3>
            </div>
            <div class="card-body">
                <div class="card-title">
                    <!-- <h3 class="text-center">Account Profile</h3> -->
                </div>
                <form action="/viewSubjectList" method="post">
                    <div class="row">
                        <div class=" col-10 offset-1 ">

                            <div class="form-group mt-2">
                                <select name="yearId" class="form-select shadow-sm">
                                    <option value=>Year </option>
                                    <option value=1>First Year</option>
                                    <option value=2>Second Year</option>
                                    <option value=3>Third Year</option>
                                    <option value=4>Fourth Year</option>
                                    <option value=5>Fifth Year</option>
                                </select>

                            </div>

                            <div class="form-group mt-2">
                                <select name="semesterId" class="form-select shadow-sm">
                                    <option value=>Semester </option>
                                    <option value=1>First Semester</option>
                                    <option value=2>Second Semester</option>
                                </select>
                            </div>

                            <div class="form-group mt-2">
                                <select name="majorId" class="form-select shadow-sm">
                                    <option value=>Major </option>
                                    <option value=1>Computer Science</option>
                                    <option value=2>Computer Technology</option>
                                </select>

                            </div>

                            <button type="submit" class="btn btn-dark mt-3">Enter</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<%--<div class="container-fluid">
    <div class="collapse row justify-content-center " id="collapse">
        <div class=" col-8 ">
            <div class="card card-body mt-3 ">--%>
                <table class="table table-success table-striped ">
                    <thead>
                    <tr>
                        <th scope="col">id</th>
                        <th scope="col">Year</th>
                        <th scope="col">Semester</th>
                        <th scope="col">Major</th>
                        <th scope="col">Subject Name</th>
                        <th scope="col">Subject Code</th>
                        <th scope="col"></th>
                        <th scope="col"></th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${viewSubject}" var="subjectList">
                        <tr>
                            <td>${subjectList.id}</td>
                            <td>${subjectList.yearId}</td>
                            <td>${subjectList.semesterId}</td>
                            <td>${subjectList.majorId}</td>
                            <td>${subjectList.subjectName}</td>
                            <td>${subjectList.subjectCode}</td>
                            <td><a href="#">Edit</a></td>
                            <td><a href="#">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</div>


</body>

<!-- bootstrap js link  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<!-- fontawesome js link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js" integrity="sha512-fD9DI5bZwQxOi7MhYWnnNPlvXdp/2Pj3XSTRrFs5FQa4mizyGLnJcN6tuvUS6LbmgN1ut+XGSABKvjN0H6Aoow==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</html>