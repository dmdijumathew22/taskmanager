<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete task</title>
</head>
<style type="text/css">
table {
	width: 100%;
	align-content: center;
}

table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 15px;
	text-align: center;
}
</style>
<body>
	Do you want to delete the following task?
	<br />
	<form action="deleteconf" method="post">
		<table style="width: 75%">
			<tr>
				<th>ID</th>
				<th>Task Name</th>
				<th>Start Date</th>
				<th>End Date</th>
				<th>Description</th>
				<th>Severity</th>
				<th>User id</th>

			</tr>

			<tr>

				<td><input type="text" name="task.id" value="${task.id}"
					readonly /></td>
				<td><input type="text" name="task.taskname"
					value="${task.taskname}" readonly /></td>
				<td><input type="text" name="task.startdate"
					value="${task.startdate}" readonly /></td>
				<td><input type="text" name="task.enddate"
					value="${task.enddate}" readonly /></td>
				<td><input type="text" name="task.description"
					value="${task.description}" readonly /></td>
					<td><input type="text" name="task.severity"
					value="${task.severity}" readonly /></td>
				<td><input type="text" name="task.userId"
					value="${task.user.userid}" readonly /></td>

			</tr>

		</table>
		<input type="submit" value="Confirm" /> <input type="submit"
			value="back" onclick="${pageContext.request.contextPath}/display';">
	</form>
</body>
</html>