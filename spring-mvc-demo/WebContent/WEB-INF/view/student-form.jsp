<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
	<title>Student Registration Form</title>
</head>

<body>

	<form:form action="processForm" modelAttribute="student">
	
		First Name: <form:input path="firstName" />
		
		<br><br>
		
		Last Name: <form:input path="lastName" />
		
		<br><br>
		
		Country: 
		<form:select path="country">
			<form:options items="${student.countryOptions}" />
		</form:select>
		
		<br><br>
		
		<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}" />
		
		<br><br>
		
		Operating Systems:
		
		<form:checkbox path="operatingSystems" value="Linux" label="Linux"/>
		<form:checkbox path="operatingSystems" value="MS Windows" label="MS Windows" />
		<form:checkbox path="operatingSystems" value="Mac OS" label="Mac OS" />
		
		<br><br>
		
		<input type="submit" value="Submit" />		
	
	</form:form>

</body>

</html>