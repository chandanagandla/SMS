<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Tickets</title>
<style type="text/css">
	Footer{
		 
		  left: 0;
		  bottom: 0;
		  width: 100%;
		  background-color: red;
		  color: white;
		  text-align: center;
		}
</style>
</head>
<body>

<!-- ##########################INCLUDE HEADER ########################## -->
	<jsp:include page="/WEB-INF/header/userheader.jsp"></jsp:include>
	
<!-- ##########################Our Code Logic To Display The Tickets ########################## -->	
	<section>
		<div class="table-responsive-sm container">
		<table  class="table table-hover caption-top table-striped">
		<caption>
			The List is about your all tickets raised which are active and resolved kindly hover appropriate ticket which gives <code>`Red Color`</code> for the ticket
			which is in active stage (means the <em>Ticket</em> is not resolved), else ticket be in <code class="text-success">`Green Color`</code> which is still in inactive stage
			 (means the <em>Ticket</em> is  resolved)
		</caption>
			<thead class="bg-dark text-light table-bordered text-center" >
				<tr>
					<th scope="col">S.No</th>
					<th scope="col">Description</th>
					<th scope="col">Days</th>
					<th scope="col">Status</th>
				</tr>
			</thead>
			<% Integer count = 0; %>		
			<tbody class="table-bordered text-center">
				
					<c:forEach items="${sessionScope.list}" var="ticket">
					<tr>
					<th scope="row" style="text-align: center;" ><%="<b>" + ++count + "</b>" %></th>
					
					<td width="50%"><c:out value="${ticket.description} "></c:out></td>
					<td><c:out value="${ticket.date}"></c:out></td>
					
					<th scope="row">
					
					<c:if test="${ticket.status =='Pending'  }">
						<p class="text-danger" ><c:out value="${ticket.status}"/></p>
					</c:if>
					<c:if test="${ticket.status =='resolve'  }">
						<p class="text-success"><c:out value="${ticket.status}"/></p>
					</c:if>
					</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</section>
	
	
	
	  <!-- ##########################INCLUDE Footer########################## -->
	<footer>
		<jsp:include page="/WEB-INF/footer/footer.jsp"></jsp:include>
	</footer>
</body>
</html>