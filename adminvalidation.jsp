<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL Demo</title>
</head>
<body>
<!--  out.println(request.getParameter("t1");)
User Name : <core:out value="${param.t1}"/><br/>
Password : <core:out value="${param.t2}"/><br/>-->

<sql:setDataSource var="a"
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/hr"
user="root" password="sai@1234" />

<sql:query dataSource="${a}" var="result">
select * from utable where username=? and password=?
<sql:param value="${param.username}"/>
<sql:param value="${param.password}"/>
</sql:query>


<!--<core:forEach items="${result.rows}" var="row">
Hi Valid User
</core:forEach>-->

<core:choose>
<core:when test="${result.rowCount == 0 }">
Invalid User
</core:when>
<core:otherwise>
<jsp:include page="Adminlogin.jsp" />  

</core:otherwise>
</core:choose>




</body>
</html>
