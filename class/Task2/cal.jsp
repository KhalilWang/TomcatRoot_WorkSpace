<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="test" %>

<h3>Input two number and a calculator:</h3>

<form method=POST>
	<input type="number" name="numberA"/>
	<select name="cal">
	   <option value="add">+</option>
	   <option value="sub">-</option>
	   <option value="mul">*</option>
	   <option value="div">/</option>
	</select> 
	<input type="number" name="numberB"/>
	<input type="submit" value="Go!"/>
</form>

<%
	
	String strnumA = request.getParameter("numberA");
	String strnumB = request.getParameter("numberB");
	String strcal  = request.getParameter("cal");
	
	if( strnumA != null && strnumB != null && strcal != null ){
%>
		<test:cal numberA="<%=strnumA%>" numberB="<%=strnumB%>" cal="<%=strcal%>" />
<%
		out.println(rst);
	}
	

%>