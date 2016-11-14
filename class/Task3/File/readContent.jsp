<%@ page language="java" contentType="text/html;charset=utf-8;" pageEncoding="utf-8"%>

<%@ page import="java.io.*" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="test" %>

<%
	request.setCharacterEncoding("UTF-8");
	String filename = request.getParameter("filename");
	String dir 		= request.getParameter("dir");
	
%>

<test:ReadTag filename="<%=filename%>" dir="<%=dir%>" />
<p><%=result%></p>
<a href="lookContent.jsp"> Return</a>

