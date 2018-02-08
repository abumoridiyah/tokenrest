<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">List of Users </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>ID</th>
				        <th>NAME</th>
				        <th>AGE</th>
				        <th>SALARY</th>
				        
				        
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${remoteusers}" var="rs">
					<tr>
						<td>${rs.id}</td>
						<td>${rs.name}</td>
						<td>${rs.age}</td>
						<td>${rs.salary}</td>
					    
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
		
   	</div>
</body>
</html>