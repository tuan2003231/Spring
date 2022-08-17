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
	
	<table>
		<s:form medtrod="post" action="${pageContext.request.contextPath }/product/add" modelAttribute="product">
			<tr><td>Name <s:input path="name"></s:input></td></tr>
			<tr><td>Price <s:input path="price"></s:input></td></tr>
			<tr><td>Quantity <s:select path="quantity"></s:select></td></tr>
			<tr><td>Status <s:checkbox path="status"></s:checkbox></td></tr>
			<tr><td>Created <s:input path="created"></s:input></td></tr>
			<tr><td>Description <s:textarea path="description"></s:textarea></td></tr>
			<tr><td><input type="submit" value="add"></td></tr>
		</s:form>
	</table>


</body>
</html>