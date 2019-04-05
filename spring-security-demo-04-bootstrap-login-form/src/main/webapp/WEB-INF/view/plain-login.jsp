<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		.failed {
			color: red;
		}
	</style>
	
	<title>Custom Login Page</title>
	
</head>

<body>
	<h3>My Custom Login Page</h3>
	
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
				method="POST">
				
		<!-- Check for login error -->
		<c:if test="${param.error != null }">
		
			<i class="failed">Sorry! You entered invalid username/password.</i>
			
		</c:if>
				 
		<p>
			<input type="text" name="username" placeholder="username" />
		</p>			
		
		<p>
			<input type="password" name="password" placeholder="password" />
	    </p>
		
		<input type="submit" value="Log In">
		
	</form:form>

</body>

</html>