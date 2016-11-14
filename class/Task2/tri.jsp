<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="test" %>

<html>
	<body>
		<h1> Here is the Result </h1>
		<test:tri sideA="5" sideB="6" sideC="7"/>
		<p> <%=result%> </p>
	</body>
</html>