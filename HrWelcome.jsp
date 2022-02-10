<%@page import="com.example.demo.bean.HrBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style type="text/css">
section {
	height: 620px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;	
	position: relative;
    margin-top: -1.5%;
    
}
div h4{
	font-weight: bold;
	font-size: 2.5em;
	font-family: ;
}
 div h1{
 	font-weight: bold;
 	font-size: 9vh;
 }
div h1, div h4 {

}
#demo{
	display: none;
	transition-delay: 1s;
	transition-duration: 1s;
}



</style>
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




<body onload="fun()">


<!-- ##########################INCLUDE HEADER ########################## -->
	<jsp:include page="/WEB-INF/header/hrHeader.jsp"></jsp:include> 
	
	
	
	
<!-- ##########################Form Starts ########################## -->
	<section class="container-flex"
		style="background-image: url('/jsp/bg.png'); background-repeat: no-repeat; " >

		<center style="padding-top: 15%">
		<div id="demo" class="carousel slide" data-ride="carousel">

			

			
			<!-- The slideshow -->
			<div class="carousel-inner mt-5" id="slide">
				<div class="carousel-item ">
				<h4>Resolve an Issue? Then..</h4>
				<a class="btn bg-dark text-light btn-lg " href="#p">Raise a Ticket</a>
				</div>
				<div class="carousel-item">
				<h4>See your tickets...</h4>
				
				<a class="btn bg-dark text-light btn-lg " href="/jsp/HrViewTicket.jsp">View All Tickets 
					<%
					/* Object --> Type cast to Integer */
					Integer count  = (Integer)request.getSession().getAttribute("size");
					if(count<=0)
						out.print("<span class='badge badge-notification bg-success rounded-pill ml-1 p-1'> "+count+"</span>");
					else if(count>=1 && count<=5)
						out.print("<span class='badge badge-notification bg-warning rounded-pill ml-1  p-1'> "+count+"</span>");
					else
						out.print("<span class='badge badge-notification bg-danger rounded-pill ml-1 p-1'> "+count+"</span>");
					%></a>
				</div>
				<div class="carousel-item active ">
				<h1>Welcome<% HrBean bean =  (HrBean)request.getSession().getAttribute("hr");
				out.print(" " +bean.getName());
				%></h1>	
				<a href="#" style="font-size: 0.5rem;">
  						<i class="fas fa-envelope fa-5x"></i>
  								<span class=" badge rounded-pill badge-notification bg-danger text-top" style="font-size: 1.2em;border: 2px black solid">Notifications</span>
				</a>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev " href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon bg-dark"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon bg-dark"></span>
			</a>

		</div>
</center>
	</section>
  <!-- ##########################Form End########################## -->
  
  <!-- ##########################INCLUDE Footer########################## -->
	<footer>
		<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
	</footer>
	
														<!---------------------- Script conditions  ----------------------------->
	<%-- 	<% if(request.getSession().getAttribute("message").toString()!=""){
			out.print("<script> alert(' " + request.getSession().getAttribute("message").toString() + "') </script>");
			request.getSession().setAttribute("message", "");
		}
%> --%>
	<script>
		
		function fun(){
			document.getElementById("demo").style.transition = "1s";
			document.getElementById("demo").style.display="block";
		}
		
	
	</script>
	<!-- JQuery -->
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