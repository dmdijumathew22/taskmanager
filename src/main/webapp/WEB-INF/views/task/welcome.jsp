<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to task manager</title>
</head>
<body>
	<div align="center">
		<h3>${msg}</h3>
		<h5>select an option to continue</h5>
		<a href="/create">
			<button>Create Task</button>
		</a> &nbsp; <a href="/deletefromwelcome">
			<button>Delete Task</button>
		</a> &nbsp; <a href="/display">
			<button>Display Tasks</button>
		</a> &nbsp; <a href="/updatefromwelcome">
			<button>Update Tasks</button>
		</a>&nbsp; <a href="/logout">
			<button>logout</button>
		</a> <br />
		<br /> To view tasks by all users (only for admins) : <a
			href="/admin/">
			<button>Admin Access</button>
		</a>
	</div>

</body>
</html>