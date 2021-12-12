<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title Here</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
    	<h1 class="text-center text-secondary"><c:out value="${dojo.name}"></c:out> Dojo</h1>
        <table class="table table-dark table-striped">
			<thead>
			    <tr>
			      
			      <th scope="col">First Name</th>
			      <th scope="col">Last Name</th>
			      <th scope="col">Age</th>
			    </tr>
  			</thead>
  			<c:forEach var="ninja" items="${dojo.ninjas}">
  			<tbody>
			    <tr>
			      <td><c:out value="${ninja.firstName}"></c:out></td>
			      <td><c:out value="${ninja.lastName}"></c:out></td>
			      <td><c:out value="${ninja.age }"></c:out></td>
			    </tr>
  			</tbody>
  			</c:forEach>
		</table>
		<a href="/">Go back</a>
    </div> <!-- End of Container -->
</body>
</html>