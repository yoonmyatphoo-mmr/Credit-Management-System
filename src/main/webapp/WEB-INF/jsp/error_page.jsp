<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" >
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style>
.text{
  text-align: center;
}
a:link {
  color: green;
  text-decoration: none;
}
a:visited {
  color: #add8e6;
  text-decoration: none;
}
a:hover {
  color: blue;
  background-color: yellow;
  text-decoration: underline;
}
a:active {
  color: black;
}
</style>
</head>
<body>
<div class="text">
    <h1><img src="https://img.icons8.com/external-flatarticons-blue-flatarticons/50/000000/external-error-coronavirus-covid19-flatarticons-blue-flatarticons.png" height="100"/></h1>
    <h1>Email is duplicate!</h1>
    <h1>Please retry your action again.</h1>
    <a href="/userAccounts" text-align="center" ><b><h1><img src="https://img.icons8.com/external-bearicons-blue-bearicons/50/000000/external-sign-up-call-to-action-bearicons-blue-bearicons-1.png"/>Register</h1></b></a>
    <br>
    <a href="/login" text-align="center"  ><b><h1><img src="https://img.icons8.com/external-bearicons-blue-bearicons/50/000000/external-login-call-to-action-bearicons-blue-bearicons-1.png"/>Login</h1></b></a>
</div>
</body>
</html>
