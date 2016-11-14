<!-- Tag for Triangle -->

<%@ tag import="java.util.*" %>

<%@ attribute name='sideA' required="true" %>
<%@ attribute name='sideB' required="true" %>
<%@ attribute name='sideC' required="true" %>
<%@ variable name-given='result' scope='AT_END' %>

<%!
	final String getTriangleArea(double a, double b, double c){
		
		if( a + b > c && a + c > b && b + c > a){
			java.text.DecimalFormat df = new java.text.DecimalFormat("#.000");  
			double p = (a + b + c) / 2.0;
			double area = Math.sqrt(p * (p - a) * (p - b) * (p - c));
			String rst = df.format(area);
			
			return "<p> Area:" + rst + "</p>";
		}else{
			return "<p> Error Input!</p>";
		}
		
	}
%>
<%
	double a = Double.parseDouble(sideA);
	double b = Double.parseDouble(sideB);
	double c = Double.parseDouble(sideC);
	
	out.println("Three sides are:" + sideA + ", " + sideB + ", " + sideC );
	jspContext.setAttribute("result", getTriangleArea(a, b, c));
%>
	