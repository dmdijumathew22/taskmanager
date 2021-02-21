<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to task manager for users</title>
</head>
<body>
	<div align="center">
	${msg}
		<a href="/create">
			<button>Create Task</button>
		</a> &nbsp;
		<a href="/delete">
			<button>Delete Task</button>
		</a> &nbsp;
		<a href="/display">
			<button>Display Tasks</button>
		</a> &nbsp;
		<a href="/update">
			<button>Update Tasks</button>
		</a>
	
	</div>
	
</body>
</html>