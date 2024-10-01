<%@page import="crud.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student Details</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

form {
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	max-width: 400px;
	margin: auto;
}

label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
}

input[type="text"], input[type="number"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="radio"] {
	margin-right: 5px;
}

fieldset {
	border: none;
	margin-bottom: 15px;
}

legend {
	font-weight: bold;
}

button {
	background-color: #28a745;
	color: white;
	border: none;
	padding: 10px;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

button:hover {
	background-color: #218838;
}
</style>
</head>
<body>
	<form action="update-student" method="post">
		<input type="hidden" name="id" value="${student.id}"> <label
			for="name">Name:</label> <input type="text" id="name" name="name"
			value="${student.name}"> <label for="number">Number:</label> <input
			type="number" id="number" name="mobile"
			value="${student.mobile}">

		<fieldset>
			<legend>Gender:</legend>
			<label> <input type="radio" name="gender" value="male">
				Male
			</label> <label> <input type="radio" name="gender" value="female">
				Female
			</label> <label> <input type="radio" name="gender" value="others">
				Others
			</label>
		</fieldset>
		<label>Skills</label> <input type="checkbox" name="skills"
			value="frontend"> front-end <input type="checkbox"
			name="skills" value="backend"> back-end <input
			type="checkbox" name="skills" value="fullstack"> full stack <label
			for="age">Age:</label> <input type="number" id="age" name="age"
			value="${student.age}"> <label for="address">Address:</label>
		<input type="text" id="address" name="address"
			value="${student.address}">

		<button type="submit">Submit</button>
	</form>
</body>
</html>