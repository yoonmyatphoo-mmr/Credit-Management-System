<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result</title>
    <style>
        /* div.row {
        border: 1px solid;
      }
      div.col{
        border: 1px solid;
      } */

        @media screen and (min-width: 576px){
            .restext{
                font-size: 20px;
            }

        }
        @media screen and (max-width: 576px) {
            .restext{
                font-size: 12px;
            }
            span.crisom-text{
                font-size: 12px;
            }
            span.regular-small{
                font-size: 11px;
            }
        }
        .crisom-text{
            font-size: 20px;
        }
        .regular-small{
            font-size: 16px;
        }
    </style>
    <!-- bootstrap link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
</head>
<body>
<form class="container border border-dark">
    <div class="row">
        <div class="col-2"><img src="download.png" class="img-fluid" width="100%" height="auto"></div>
        <div class="col">
            <div class="row1"><h3 class="text-center restext">Republic of The Union of Myanmar</h3></div>
            <div class="row1"><h3 class="text-center restext">Ministry of Science & Technology</h3></div>
            <div class="row1"><h3 class="text-center restext">TechnologyUniversity of Computer Studies(Taunggyi)</h3></div>
        </div>
    </div>
    <c:choose>
        <c:when test="${empty results}">
            <div class="alert alert-info" role="alert">No results found</div>
        </c:when>
        <c:otherwise>
    <div class="row">
        <div class="col-8">
            <span class="crisom-text lh-lg">Address : Union Road, Taunggyi City</span><br>
            <span class="crisom-text lh-1 restext2">Shan State, Union of Myanmar</span>
        </div>
        <div class="col"><span class="crisom-text lh-lg">Telephone: 09-899766543</span></div>
    </div>
            <div class="row">
                <div class="col-1"><span class="crimson-text">Name</span></div>
                <div class="col-7"><span class="crimson-text">${results[0].name}</span></div>
                <div class="col-1"><span class="crimson-text">Roll No-</span></div>
                <div class="col-3"><span class="crimson-text">${results[0].studentIdentity}</span></div>
            </div>
            <div class="row">
                <div class="col-1"><span class="crimson-text">Year</span></div>
                <div class="col"><span class="crimson-text">${results[0].yearId} ${results[0].majorId} (2019-2020) Academic Year</span></div>
            </div>
            <div class="row">
                <div class="col text-center"><span class="crimson-text">${results[0].semesterId} (GPA Sheet)</span></div>
            </div>
            <div class="row bg-light">
                <div class="col-1"><span class="crimson-text">Subject Code</span></div>
                <div class="col"><span class="crimson-text">Subject Name</span></div>
                <div class="col-1"><span class="crimson-text">Credit Unit</span></div>
                <div class="col-1"><span class="crimson-text">Grade</span></div>
                <div class="col-1"><span class="crimson-text">Grade Score</span></div>
                <div class="col-1"><span class="crimson-text">Grade Point</span></div>
            </div>
            <c:set var="totalCreditUnit" value="0" />
            <c:set var="totalGradePoint" value="0" />
            <c:forEach var="result" items="${results}">
                <div class="row">
                    <div class="col-2"><span class="fs-6">${result.subjectCode}</span></div>
                    <div class="col"><span class="fs-6">${result.subjectName}</span></div>
                    <div class="col-1 text-center"><span class="fs-6">${result.subjectCreditUnits}</span></div>
                    <div class="col-1 text-center"><span class="fs-6">${result.grade}</span></div>
                    <div class="col-1 text-center"><span class="fs-6">${result.gradeScore}</span></div>
                    <div class="col-1 text-center"><span class="fs-6">${result.gradePoint}</span></div>
                </div>
                <c:set var="totalCreditUnit" value="${totalCreditUnit + result.subjectCreditUnits}" />
                <c:set var="totalGradePoint" value="${totalGradePoint + result.gradePoint}" />
            </c:forEach>
            <div class="row">
                <div class="col-8 text-center"><span class="crisom-text">Total Credit Unit</span></div>
                <div class="col-1 text-center"><span class="crisom-text">${totalCreditUnit}</span></div>
                <div class="col-2 text-center"><span class="crisom-text">Total Grade Point</span></div>
                <div class="col-1 text-center"><span class="crisom-text">${totalGradePoint}</span></div>
            </div>
        </c:otherwise>
    </c:choose>

<%-- <!-- sec semester start -->
    <div class="row">
        <div class="col text-center"><span class="crisom-text">Second Semester (GPA Sheet)</span></div>
    </div>
    <div class="row bg-light">
        <div class="col-1"><span class="crisom-text">SubjectName Code</span></div>
        <div class="col"><span class="crisom-text">SubjectName</span></div>
        <div class="col-1"><span class="crisom-text">Credit Unit</span></div>
        <div class="col-1"><span class="crisom-text">Grade</span></div>
        <div class="col-1"><span class="crisom-text">Grade Score</span></div>
        <div class="col-1"><span class="crisom-text">Grade Point</span></div>
    </div>
    <div class="row">
        <div class="col-1"><span class="fs-6">E-2101</span></div>
        <div class="col"><span class="fs-6">English</span></div>
        <div class="col-1 text-center"><span class="fs-6">3</span></div>
        <div class="col-1 text-center"><span class="fs-6">A</span></div>
        <div class="col-1 text-center"><span class="fs-6">4</span></div>
        <div class="col-1 text-center"><span class="fs-6">12</span></div>
    </div>
    <div class="row bg-light">
        <div class="col-1"><span class="fs-6">E-2101</span></div>
        <div class="col"><span class="fs-6">English</span></div>
        <div class="col-1 text-center"><span class="fs-6">3</span></div>
        <div class="col-1 text-center"><span class="fs-6">A</span></div>
        <div class="col-1 text-center"><span class="fs-6">4</span></div>
        <div class="col-1 text-center"><span class="fs-6">12</span></div>
    </div>
    <div class="row">
        <div class="col-1"><span class="fs-6">E-2101</span></div>
        <div class="col"><span class="fs-6">English</span></div>
        <div class="col-1 text-center"><span class="fs-6">3</span></div>
        <div class="col-1 text-center"><span class="fs-6">A</span></div>
        <div class="col-1 text-center"><span class="fs-6">4</span></div>
        <div class="col-1 text-center"><span class="fs-6">12</span></div>
    </div>
    <div class="row bg-light">
        <div class="col-1"><span class="fs-6">E-2101</span></div>
        <div class="col"><span class="fs-6">English</span></div>
        <div class="col-1 text-center"><span class="fs-6">3</span></div>
        <div class="col-1 text-center"><span class="fs-6">A</span></div>
        <div class="col-1 text-center"><span class="fs-6">4</span></div>
        <div class="col-1 text-center"><span class="fs-6">12</span></div>
    </div>
    <div class="row">
        <div class="col-1"><span class="fs-6">E-2101</span></div>
        <div class="col"><span class="fs-6">English</span></div>
        <div class="col-1 text-center"><span class="fs-6">3</span></div>
        <div class="col-1 text-center"><span class="fs-6">A</span></div>
        <div class="col-1 text-center"><span class="fs-6">4</span></div>
        <div class="col-1 text-center"><span class="fs-6">12</span></div>
    </div>
    <div class="row bg-light">
        <div class="col-1"><span class="fs-6">E-2101</span></div>
        <div class="col"><span class="fs-6">English</span></div>
        <div class="col-1 text-center"><span class="fs-6">3</span></div>
        <div class="col-1 text-center"><span class="fs-6">A</span></div>
        <div class="col-1 text-center"><span class="fs-6">4</span></div>
        <div class="col-1 text-center"><span class="fs-6">12</span></div>
    </div>
    <div class="row">
        <div class="col-8 text-center"><span class="crisom-text">Total Credit Unit</span></div>
        <div class="col-1 text-center"><span class="crisom-text">18</span></div>
        <div class="col-2 text-center"><span class="crisom-text">Total Grade Point</span></div>
        <div class="col-1 text-center"><span class="crisom-text">67.88</span></div>
    </div>
    </c:forEach>
    <div class="row bg-light">
        <div class="offset-3 col-3"><span class="crisom-text">Grade Description</span></div>
        <div class="col-2 offset-3 text-center"><span class="crisom-text">Cumulative GPA</span></div>
        <div class="col-1 text-center"><span class="crisom-text">3.87</span></div>
    </div>--%>


    <!-- sec sem end -->
    <div class="row">
        <div class="col-2"><span class="crisom-text">A+(>90)</span></div>
        <div class="col-2"><span class="crisom-text">A(80-89)</span></div>
        <div class="col-2"><span class="crisom-text">A-(75-79)</span></div>
        <div class="col-2"><span class="crisom-text">B+(70-74)</span></div>
    </div>
    <div class="row">
        <div class="col-2"><span class="crisom-text">A+(>90)</span></div>
        <div class="col-2"><span class="crisom-text">A(80-89)</span></div>
        <div class="col-2"><span class="crisom-text">A-(75-79)</span></div>
        <div class="col-2"><span class="crisom-text">B+(70-74)</span></div>
    </div>
</div>
</span>
</form>
</body>
</html>