<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="head.jsp"/>


<%
	String strnum = request.getParameter("num");
	if(strnum == null){
		out.println("Nothing Here!");
	}else{
		int number = Integer.parseInt(strnum);
		out.println("50 - 100\n");
		out.println("What you input is " + number);
%>
	<br/>
	<img src='pic.jpg' width='<%=number%>' height='<%=number%>'/>
<%
	}
%>
