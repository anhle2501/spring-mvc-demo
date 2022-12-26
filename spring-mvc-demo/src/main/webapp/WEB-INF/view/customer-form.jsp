<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
	<title>Customer Registration Form</title>
	<style type="text/css">.error {color:red}}</style>
</head>
<body>
Fill out the form. Asterisk(*) means require
	<form:form action="processForm" modelAttribute="customer"> 
		First name: <form:input path="firstName"/>
		<br><br>
		Last name(*): <form:input path="lastName"/>
		<form:errors path="lastName" cssClass="error"></form:errors>
		<br><br>
		Free passes: <form:input path="freePasses"/>
		<form:errors path="freePasses" cssClass="error"></form:errors>
		<br><br>
		Postal code: <form:input path="postalCode"/>
		<form:errors path="postalCode" cssClass="error"></form:errors>
		<br><br>
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>