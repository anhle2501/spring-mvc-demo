<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Student Confirmation</title>
	</head>
	<body>
		The Student is confirmed: ${student.firstName } ${student.lastName }
		<br><br>
		Favorite language: ${student.favoriteLanguage }
		<br><br>
		Operating Systems:
		<ul>
			<c:forEach var="temp" items="${student.operatingSystems }">
			<li>${temp } </li>
			</c:forEach>
		</ul>
		<br><br>
		Country: ${student.country }
	</body>
</html>