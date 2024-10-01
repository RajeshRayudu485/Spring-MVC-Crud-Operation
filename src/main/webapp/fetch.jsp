<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch</title>
</head>
<body>
    <h1 align="center" style="color:red">${result}</h1>
	<div align="center">
		<table border="1">
			<tr>
			<th>Name</th>
			<th>Mobile</th>
			<th>Gender</th>
			<th>Skills</th>
			<th>Age</th>
			<th>Address</th>
			<th>Edit</th>
			<th>Delete</th>
			</tr>
			<c:forEach var="s" items="${success}">
			<tr>
			<th>${s.name}</th>
			<th>${s.mobile}</th>
			<th>${s.gender}</th>
			<th>${s.skills != null ? Arrays.toString(s.skills) : 'No skills available'}</th>
			<th>${s.age}</th>
			<th>${s.address}</th>
			<th><a href="edit?id=${s.id}"><button>Edit</button></a></th>
			<th><a href="delete?id=${s.id}"><button>Delete</button></a></th>
			</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
			