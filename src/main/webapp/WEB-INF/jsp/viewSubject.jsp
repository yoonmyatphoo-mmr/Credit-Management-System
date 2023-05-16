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
                <form action="/viewSubject" method="post">
                    <div id="just-show">
                        <c:if test="${not empty message}">
                            <div id="message" class="alert alert-danger" role="alert">${message}</div>
                        </c:if>
                        <c:if test="${not empty no_exit}">
                            <div id="no_exit" class="alert alert-danger" role="alert">${no_exit}</div>
                        </c:if>
                        <c:if test="${not empty success}">
                            <div id="success" class="alert alert-danger" role="alert">${success}</div>
                        </c:if>
                    </div>
                    <div class="row">
                        <div class=" col-10 offset-1 ">

                            <div class="form-group mt-2">
                                <select name="yearId" class="form-select shadow-sm">
                                    <option value="First Year" ${selectedYearId == 'First Year' ? 'selected' : ''}>First Year</option>
                                    <option value="Second Year" ${selectedYearId == 'Second Year' ? 'selected' : ''}>Second Year</option>
                                    <option value="Third Year" ${selectedYearId == 'Third Year' ? 'selected' : ''}>Third Year</option>
                                    <option value="Fourth Year" ${selectedYearId == 'Fourth Year' ? 'selected' : ''}>Fourth Year</option>
                                    <option value="Fifth Year" ${selectedYearId == 'Fifth Year' ? 'selected' : ''}>Fifth Year</option>
                                </select>

                            </div>

                            <div class="form-group mt-2">
                                <select name="semesterId" class="form-select shadow-sm">
                                    <option value="First Semester" ${selectedSemesterId == 'First Semester' ? 'selected' : ''}>First Semester</option>
                                    <option value="Second Semester" ${selectedSemesterId == 'Second Semester' ? 'selected' : ''}>Second Semester</option>
                                </select>
                            </div>

                            <div class="form-group mt-2">
                                <select name="majorId" class="form-select shadow-sm">
                                    <option value="Computer Science" ${selectedMajorId == 'Computer Science' ? 'selected' : ''}>Computer Science</option>
                                    <option value="Computer Technology" ${selectedMajorId == 'Computer Technology' ? 'selected' : ''}>Computer Technology</option>
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

<div class="container mt-5">
                <table class="table table-success table-striped" >
                    <div class="row">
                    <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Year</th>
                        <th scope="col">Semester</th>
                        <th scope="col">Major</th>
                        <th scope="col">Subject Name</th>
                        <th scope="col-3">Subject Code</th>
                        <th scope="col"></th>
                        <th scope="col"></th>


                    </tr>
                    </thead>
                    </div>
                    <tbody>
                    <c:forEach items="${viewSubject}" var="subjectList">
                        <tr>
                            <td>${subjectList.id}</td>
                            <td>${subjectList.yearId}</td>
                            <td>${subjectList.semesterId}</td>
                            <td>${subjectList.majorId}</td>
                            <td>${subjectList.subjectName}</td>
                            <td>${subjectList.subjectCode}</td>
                            <td><a href="/editSubject?id=${subjectList.id}&amp;subjectName=${java.net.URLEncoder.encode(subjectList.subjectName, 'UTF-8')}&amp;subjectCode=${subjectList.subjectCode}&amp;yearId=${subjectList.yearId}&amp;semesterId=${subjectList.semesterId}&amp;majorId=${subjectList.majorId}" class="btn btn-success">Edit</a></td>
                            <td>
                                <form action="/deleteSubject" method="POST">
                                    <input type="hidden" name="id" value="${subjectList.id}" />
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
</div>
            </div>
        </div>

    </div>
</div>


</body>
<%--<script>

    document.getElementById("view").style.display = "none";
    function view(){
        var view = document.getElementById("view");
        document.getElementById("view").style.display="block";
    }

</script>--%>

<!-- bootstrap js link  -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<!-- fontawesome js link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js" integrity="sha512-fD9DI5bZwQxOi7MhYWnnNPlvXdp/2Pj3XSTRrFs5FQa4mizyGLnJcN6tuvUS6LbmgN1ut+XGSABKvjN0H6Aoow==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</html>