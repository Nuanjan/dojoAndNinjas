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
    	<div class="row m-3">
        <c:forEach var="dojo" items="${dojos}">
        	<div class="card text-white bg-dark m-3 col">
	  			<div class="card-header">#<c:out value="${dojo.id}"></c:out></div>
	  			<div class="card-body">
	    			<h5 class="card-title"><a href="/dojos/${dojo.id}"><c:out value="${dojo.name}"></c:out></a></h5>
  				</div>
  			</div>
        </c:forEach>
    	</div>
    	<div class="d-flex justify-content-center">
	        <a href="/dojos/new" class="btn btn-info m-3">Create New Dojo</a>
	        <a href="/ninjas/new" class="btn btn-info m-3">Create New Ninja</a>
    	</div>
    </div> <!-- End of Container -->
</body>
</html>