<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="base.jsp"></jsp:include>
<title>${title}</title>
</head>
<body style="background: rgba(233,12,40,23)">
<div class="container">
<div class="jumbotron">
<h1><b>Subject Registration Form</b></h1>
</div>
</div>
<div class="container">
<form action="saveSubject" method="post">
  <div class="form-group">
    <label for="name">Subject Name</label>
    <input type="text" class="form-control" id="name" name="sub_name"   placeholder="Enter your Subject Name..........">
  </div>
  <div class="form-group">
   <label for="desc">Sub_description</label>
    <input type="text" class="form-control" id="desc" name="sub_desc" placeholder="Enter your Subject Description............">
  </div>
  <div class="text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
</form>
</div>
</body>
</html>