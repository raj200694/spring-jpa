<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>           
.blue-button{
	background: #25A6E1;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:3px 5px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:2px;
	-moz-border-radius:2px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}     
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
</head>
<body>
<form:form method="post" modelAttribute="contact" action="${pageContext.request.contextPath}/contacts">
<table>
		
	<form:hidden path="id" />
          <td><form:label path="customerName">Search</form:label></td>
          <td><form:input path="customerName" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
			   
			<td colspan="2"><input type="submit"
				class="blue-button" /></td>
		</tr>
	</table> 
</form:form>
</br>
<h3>contact List</h3>
<c:if test="${!empty listOfContacts}">
	<table class="tg">
	<tr>
		<th width="80">Id</th>
		<th width="120">contact name</th>
		<th width="120">Email</th>
	
	</tr>
	<c:forEach items="${listOfContacts}" var="contact">
		<tr>
			<td>${contact.id}</td>
			<td>${contact.contactName}</td>
			<td>${contact.email}</td>
			
		</tr>
	</c:forEach>
	</table>
</c:if>
</body>
</html>
