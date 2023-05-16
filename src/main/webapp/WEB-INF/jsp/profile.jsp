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
    <title> Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./node_modules/css/style.css">

    <link rel="stylesheet" href="./node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./node_modules/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
</head>

<body class="main">
    <div class="main row  m-4">
        <div class="col-3 text-center">
            <a href="/userAccounts">
                <button class="btn bg-dark text-white col-4 "><i class="fa-solid fa-arrow-left"></i> Back</button>
            </a>
        </div>
    </div>
    <div class="container-fluid d-flex justify-content-center">
        <div class="col-5 ">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h4 class="head">Profile</h4>
                </div>
                <div class="card-body">
                    <div class="card-title">
                        <h3 class="text-center">Student Information</h3>
                    </div>
                    <form action="/profile" method="post">
                        <div class="row">
                            <div class=" col-10 offset-1 ">


                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 fw-medium" for="">Phone</label>
                                    <input class="form-control  fw-normal shadow-sm" name="phone" type="number" placeholder="Enter Phone Number..." required>
                                </div>


                                <a href="">
                                    <button class="btn bg-dark text-white col-12 my-4" type="submit">
                                        <i class="fa-solid fa-arrow-up-from-bracket me-2"></i> <span class=""> Update Your Profile</span>
                                    </button>
                                </a>
                            </div>
                        </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</body>
<script src="./node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="./node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>

</html>