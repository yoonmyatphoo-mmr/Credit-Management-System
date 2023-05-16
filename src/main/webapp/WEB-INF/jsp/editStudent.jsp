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
    <title>Student Information Page</title>
    <!-- bootstrap css link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">

    <!-- Fontawesome css link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
</head>

<body>
    <div class="main row  m-4">
        <div class="col-3 text-center">
            <form action="/viewStudent" method="post">
                <input type="hidden" name="yearId" value="${selectedYearId}">
                <input type="hidden" name="semesterId" value="${selectedSemesterId}">
                <input type="hidden" name="majorId" value="${selectedMajorId}">
                <button class="btn w-75 bg-dark text-white col-3" type="submit"><i class="fa-solid fa-arrow-left"></i> Back</button>
            </form>
        </div>
    </div>
    <div class="container-fluid d-flex justify-content-center">
        <div class="col-5 ">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h4 class="head">Student Information</h4>
                </div>
                <div class="card-body">
                    <div class="card-title">
                        <!-- <h3 class="text-center"></h3> -->
                    </div>
                    <form action="/saveStudent" method="POST" modelAttribute="studentDetail">
                        <div id="just-show">
                            <c:if test="${not empty errorMessage}">
                                <div id="message" class="alert alert-danger" role="alert">${errorMessage}</div>
                            </c:if>
                            <c:if test="${not empty successMessage}">
                                <div id="successMessage" class="alert alert-success" role="alert">${successMessage}</div>
                            </c:if>
                        </div>
                        <div class="row">
                            <div class="col-10 offset-1">
                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 fw-medium" for="studentIdentity">Student Identity</label>
                                    <input class="form-control fw-normal shadow-sm" id="studentIdentity" name="studentIdentity" readonly type="text" value="${studentDetail.studentIdentity}">
                                </div>

                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 fw-medium" for="name">Name</label>
                                    <input class="form-control fw-normal shadow-sm" id="name" name="name" type="text" readonly value="${studentDetail.name}">
                                </div>

                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 fw-medium" for="yearId">Year</label>
<%--                                    <input class="form-control fw-normal shadow-sm" id="yearId" name="yearId" type="text" value="${studentDetail.yearId}">--%>
                                    <select class="form-control fw-normal shadow-sm" id="yearId" name="yearId">
                                        <option value="First Year" ${studentDetail.yearId == 'First Year' ? 'selected' : ''}>First Year</option>
                                        <option value="Second Year" ${studentDetail.yearId == 'Second Year' ? 'selected' : ''}>Second Year</option>
                                        <option value="Third Year" ${studentDetail.yearId == 'Third Year' ? 'selected' : ''}>Third Year</option>
                                        <option value="Fourth Year" ${studentDetail.yearId == 'Fourth Year' ? 'selected' : ''}>Fourth Year</option>
                                        <option value="Fifth Year" ${studentDetail.yearId == 'Fifth Year' ? 'selected' : ''}>Fifth Year</option>
                                    </select>
                                </div>

                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 fw-medium" for="semesterId">Semester</label>
                                    <select class="form-control fw-normal shadow-sm" id="semesterId" name="semesterId">
                                        <option value="First Semester" ${studentDetail.semesterId == 'First Semester' ? 'selected' : ''}>First Semester</option>
                                        <option value="Second Semester" ${studentDetail.semesterId == 'Second Semester' ? 'selected' : ''}>Second Semester</option>
                                    </select>
<%--                                    <input class="form-control fw-normal shadow-sm" id="semesterId" name="semesterId" type="text" value="${studentDetail.semesterId}">--%>
                                </div>

                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 fw-medium" for="majorId">Major</label>
                                    <select class="form-control fw-normal shadow-sm" id="majorId" name="majorId">
                                        <option value="Computer Science" ${studentDetail.majorId == 'Computer Science' ? 'selected' : ''}>Computer Science</option>
                                        <option value="Computer Technology" ${studentDetail.majorId == 'Computer Technology' ? 'selected' : ''}>Computer Technology</option>
                                    </select>
<%--                                    <input class="form-control fw-normal shadow-sm" id="majorId" name="majorId" type="text" value="${studentDetail.majorId}">--%>
                                </div>
                                <br>

                                <button type="submit" class="btn btn-primary">Edit</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

</body>
<!-- bootstrap javascript  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<!-- fontawesome javascript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js" integrity="sha512-fD9DI5bZwQxOi7MhYWnnNPlvXdp/2Pj3XSTRrFs5FQa4mizyGLnJcN6tuvUS6LbmgN1ut+XGSABKvjN0H6Aoow==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</html>