<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student registration form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
		FirstName: <form:input path="firstName"/>
		<br><br>
		LastName: <form:input path="lastName"/>
		<br><br>
		Country: 
		<form:select path="country">
			<form:options items="${student.countryOptions }" />
		</form:select>
		<br><br>
		Favorite Language: 
		C# <form:radiobutton path="favoriteLanguage" value="Java"/>
		PHP <form:radiobutton path="favoriteLanguage" value="C#"/>
		Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"/>

		<br><br>
		Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux"/>
		Windows <form:checkbox path="operatingSystems" value="Windows"/>
		Mac <form:checkbox path="operatingSystems" value="Mac"/>
		<br><br>
		
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>