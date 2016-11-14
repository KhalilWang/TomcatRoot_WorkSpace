<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="head.jsp"/>

<form>
	<p>Input a number:</>
	<input type="text" name="num"/>
	<input type="submit" value="Submit" name="233">
</form>


<%
	String strnum = request.getParameter("num");
	
	if(strnum == null){
		out.println("Input a number!");
	}else{
		int number = Integer.parseInt(strnum);
		if(number > 50 && number < 100){ 
%>
	<jsp:forward page="three.jsp">
		<jsp:param name="num" value="<%=number%>"/>
	</jsp:forward>

<%		}else if(number >0 && number < 50){ %>
	<jsp:forward page="two.jsp">
		<jsp:param name="num" value="<%=number%>"/>
	</jsp:forward>
		
<%		}else{%>
	<jsp:forward page="error.jsp">
		<jsp:param name="num" value="<%=number%>"/>
	</jsp:forward>
<%
}
	}
%>
