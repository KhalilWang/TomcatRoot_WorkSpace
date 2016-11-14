<%@ page contentType="text/html;charset=utf-8" %>

<%@ page import="java.io.*" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="test" %>

<%
	request.setCharacterEncoding("UTF-8");
	String filename = request.getParameter("filename");
	String dir 		= request.getParameter("dir");
	String content  = request.getParameter("content");
	
%>

<test:WriteTag filename="<%=filename%>" dir="<%=dir%>" content="<%=content%>" />
<p><%=result%></p>
<a href="giveContent.jsp"> Return</a>

