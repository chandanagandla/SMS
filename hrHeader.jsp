<%@page import="com.example.demo.bean.HrBean"%>
<%@page import="com.example.demo.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Welcome User</title>
<meta charset="ISO-8859-1">
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<!-- MD Bootstrap -->
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet">

</head>
<body>
	<nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3">
		<% 
		HrBean hr =  (HrBean)request.getSession().getAttribute("hr");
		String name = hr.getName();
		
		%>
		
		<a href="/jsp/HrWelcome.jsp" class="navbar-brand text-light h5-responsive" >Welcome <%=name %></a>

	

		<!-- Options -->
		<div style="border-left: 0.5vh white solid; margin-left: 5%">
			<ul class="navbar-nav mr-auto text-center ml-5 p-2"
				style="font-size: 1.15em">
				<li class="nav-item pl-5"><a href="/jsp/HrViewTicket.jsp"
					class="nav-link text-uppercase ">List of Tickets <span >
					<%
					/* Object --> Type cast to Integer */
					Integer count  = (Integer)request.getSession().getAttribute("size");
					if(count<=0)
						out.print("<span class='badge bg-info text-dark rounded-pill ms-2 ml-1 pb-1'> "+count+"</span>");
					else
						out.print("<span class='badge bg-danger rounded-pill ms-4 ml-1 pb-1'> "+count+"</span>");
					%></span></a></li>
				<li class="nav-item  pl-5 "><a class="nav-link text-uppercase "
					href="#">Logout</a></li>
			</ul>
		</div>
	</nav>
	<br>


	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
</body>
</html>