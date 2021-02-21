<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display task</title>
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
	<div align="center">
	${msg}
	<form method="post" >
		<table style="width: 75%">
			<tr>
				<th>ID</th>
				<th>Task Name</th>
				<th>Start Date</th>
				<th>End Date</th>
				<th>Description</th>
				<th>User id</th>
				<th>select task</th>
			</tr>
			<c:forEach items="${tasks}" var="task">
				<tr>

					<td>${task.id}</td>
					<td>${task.taskname}</td>
					<td>${task.startdate}</td>
					<td>${task.enddate}</td>
					<td>${task.description}</td>
					<td>${task.userId}</td>
					<td><input type="radio" name="selected" value="${task.id}" ></td>
				</tr>
			</c:forEach>
		</table>
		<input type="submit" value="Update" onclick="form.action='update/<%=request.getParameter("selected")%>';">
		&nbsp;
		<input type="submit" value="Delete" onclick="form.action='delete/${selected}';">
		</form>
		<%-- <%String id =request.getParameter("selected");%>
		<br />
		<br /> <a href="/create">
		
			<button>Create Task</button>
		</a> 
		<br />
		<br />
			<form action="delete/<%=request.getParameter("selected") %>" method ="post">
			
			<input type ="submit" value ="DELETE"/>
			</form>
	 --%><%-- 	 &nbsp; &nbsp;<form action="update" method ="post">
			<label id="${id}"<%= request.getAttribute(name)("selected") %>></label>
			<input type ="submit" value ="UPDATE"/>
			</form> --%>

	</div>
</body>
</html>