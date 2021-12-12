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
<title>Create Dojo</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
    	<h1>New Ninja</h1>
 		<form:form action="/ninjas/create" method="post" modelAttribute="ninja">
	 		<div>
	        	<form:errors path="firstName" class="text-danger"></form:errors><br />
	        	<form:label path="firstName" class="w-25">First Name: </form:label>
	        	<form:input type="text" path="firstName"></form:input>
	 		</div>
	 		<div>
	        	<form:errors path="lastName" class="text-danger"></form:errors><br />
	        	<form:label path="lastName" class="w-25">Last Name: </form:label>
	        	<form:input type="text" path="lastName"></form:input>
	 		</div>
	 		<div>
	        	<form:errors path="age" class="text-danger"></form:errors><br />
	        	<form:label path="age" class="w-25">Age: </form:label>
	        	<form:input type="number" path="age"></form:input>
	 		</div>
	 		<div>
	 			<form:label path="dojo" class="w-25">Select Dojo:</form:label>
	 			<form:select path="dojo">
	 				<c:forEach var="dojo" items="${dojos}">
	 					<form:option value="${dojo.id}"><c:out value="${dojo.name}"></c:out></form:option>
	 				</c:forEach>
	 			</form:select>
	 		</div>
        	<input type="submit" value="Create" class="btn btn-primary" />
        </form:form>  
    </div> <!-- End of Container -->
</body>
</html>


