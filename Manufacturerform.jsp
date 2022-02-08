<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
		<h1>Add New Mnaufacturer</h1>
       <form:form method="post" action="save">  
      	<table >  
      	 <tr>  
         
          <td>Id: </td> 
          <td><form:input path="id"  /></td>
         </tr>  
         <tr>  
         <tr>  
         
          <td>Name : </td> 
          <td><form:input path="name"  /></td>
         </tr>  
         <tr>  
          <td>Email:</td>  
          <td><form:input path="email" /></td>
         </tr> 
         <tr>  
          <td>Phonenumber:</td>  
          <td><form:input path="phonenumber" /></td>
         </tr> 
         <tr>  
          <td> </td>  
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form:form>  
 </html>
