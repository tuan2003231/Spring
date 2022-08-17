<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<title>Home_product</title>
</head>
<body>
	<img alt=""
		src="${pageContext.request.contextPath }/resources/images/bed.jpg"
		width="300px" height="300px">

	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Status</th>
			<th>Created</th>
			<th>Description</th>
		</tr>
		<c:forEach var="pro" items="${products }">
			<tr>
				<td>${pro.id }</td>
				<td>${pro.name}</td>
				<td>${pro.price}</td>
				<td>${pro.quantity}</td>
				<td>${pro.status}</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${pro.created}"></fmt:formatDate></td>
				<td>${pro.description}</td>
			</tr>
		</c:forEach>
	</table>

	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Status</th>
			<th>Created</th>
			<th>Description</th>
		</tr>
		<c:forEach var="pro" items="${products2 }">
			<tr>
				<td>${pro.id }</td>
				<td>${pro.name}</td>
				<td>${pro.price}</td>
				<td>${pro.quantity}</td>
				<td>${pro.status}</td>
				<td><fmt:formatDate pattern="dd/MM/yyyy" value="${pro.created}"></fmt:formatDate></td>
				<td>${pro.description}</td>
			</tr>
		</c:forEach>
	</table>




</body>
</html>