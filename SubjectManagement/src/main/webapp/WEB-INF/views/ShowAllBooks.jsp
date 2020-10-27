<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="./base.jsp"  %> 
<title>Show All Subject</title>
</head>
<body style="background: rgba(233,12,40,23)">
<div class="jumbotron">
<h1><b>Show All SUBJECT RECORD</b></h1>
</div>
<div class="container">
<table class="table">
  <thead>
    <tr>
      <th scope="col">Subject Id</th>
      <th scope="col">Subject Name</th>
      <th scope="col">Subject Description</th>
      <th scope="col">Subject Update</th>
      <th scope="col">Subject Delete</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${subject}" var="s">
    <tr>
      <td style="color: white">${s.id}</td>
      <td style="color: white">${s.sub_name}</td>
      <td style="color: white">${s.sub_desc}</td>
      <td style="color: white"><b><a href="updateSub/${s.id}">Update Subject</a></b></td>
      <td style="color: white"><b><a href="deleteSubject/${s.id}">Delete Subject</a></b></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
<div class="text-center">
<a href="addSubject" class="btn btn-primary">Add Subject</a>
</div>
</div>
</body>
</html>