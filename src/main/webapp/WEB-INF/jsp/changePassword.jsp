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
    <title>Change Password</title>
    <link rel="stylesheet" href="./node_modules/css/style2.css">
    <link rel="stylesheet" href="./node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./node_modules/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
</head>

<body class="main1">
    <div class="row  m-4">
        <div class="col-3 text-center">
            <a href="">
                <button class="btn bg-dark text-white col-3 "><i class="fa-solid fa-arrow-left"></i> Back</button>
            </a>
        </div>
    </div>
    <div class="container-fluid d-flex justify-content-center">
        <div class="col-5 ">
            <div class="card shadow-sm">
                <div class="card-header">
                    <h4>Change Password</h4>
                </div>
                <div class="card-body">
                    <div class="card-title">
                        <!-- <h3 class="text-center">Account Profile</h3> -->
                    </div>
                    <form action="/changePassword" method="post">
                        <div class="row">
                            <div class=" col-10 offset-1 ">
                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 " for="">Old Password</label>
                                    <input class="form-control shadow-sm " name="oldPassword" type="password" placeholder="Enter Old Password..." required>
                                </div>

                                <div class="form-group mt-2">
                                    <label class="control-label mb-1 " for="">New Password</label>
                                    <input class="form-control shadow-sm" name="newPassword" type="password" placeholder="Enter New Password..." required>
                                </div>

                               <%-- <div class="form-group mt-2">
                                    <label class="control-label mb-1 " for="">Confirm New Password</label>
                                    <input class="form-control shadow-sm" name="email" type="password" placeholder="Enter Confirm New Password..." required>
                                </div>--%>

                                <a href="">
                                    <button class="mt-3 btn bg-dark text-white"><i class="fa-solid fa-key  me-2"></i><span class="">Change Password</span></button>
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