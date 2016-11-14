
<%@ tag import="java.util.*" %>

<%@ attribute name="numberA" required="true" %>
<%@ attribute name="numberB" required="true" %>
<%@ attribute name="cal"     required="true" %>

<%@ variable name-given="rst" scope="AT_END" %>

<%!
	final String calculate(double a, double b, String cal){
		double c = 0;
		switch(cal){
			case "add":
				c = a + b;
				return "Result:" + c;
			case "sub":
				c = a - b;
				return "Result:" + c;
			case "mul":
				c = a * b;
				return "Result:" + c;
			case "div":
				if( b != 0 ){
					c = a / b;
					return "Result:" + c;
				}else{
					return "Error divding zero!";
				}
		}
		return "Nothing";
	}
%>

<%
	double a = Double.parseDouble(numberA);
	double b = Double.parseDouble(numberB);
	
	jspContext.setAttribute("rst", calculate(a, b, cal));
%>