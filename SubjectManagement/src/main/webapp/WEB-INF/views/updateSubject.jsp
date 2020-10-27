<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="./base.jsp"  %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="jumbotron">
<h1><b>Subject Update Form</b></h1>
</div>
</div>
<div class="container">
<form action="${pageContext.request.contextPath}/saveSubject" method="post">
<div class="form-group">
    <label for="id">Subject Id</label>
    <input type="number" class="form-control" id="id" name="id" value="${subject.id}">
  </div>
  <div class="form-group">
    <label for="name">Subject Name</label>
    <input type="text" class="form-control" id="name" name="sub_name" value="${subject.sub_name}">
  </div>
  <div class="form-group">
   <label for="desc">Sub Description</label>
    <input type="text" class="form-control" id="desc" name="sub_desc" value="${subject.sub_desc}">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit Subject</button>
  </div>
</form>
</div>
</body>
</html>