<%@ pageEncoding='utf-8' %>

<%@ attribute name='number' required='true' %>
<%@ variable  name-given='msg' scope='AT_END' %>

<%
	String msg = "";
	if(number == null){
		
	}else{
		Integer integer = (Integer) session.getAttribute('save');
		int realnumber = integer.intValue();
		int count = ((Integer)session.getAttribute("count")).intValue();
		int guessnumber = 0;\
		
		boolean condition = true;
		
		
		try{
			guessnumber = Integer.parseInt(number);
		}catch(Exception exp){
			condition = false;
		}
		
		if(condition){
			if(guessnumber == realnumber){
				count++;
				session.setAttribute("count", new Integer(n));
				msg = "You're Right! This is your " + n + "th guess;";
			}else{
				count++;
				session.setAttribute("count", new Integer(n));
				msg = "No you're wrong! This is your " + n + "th guess;";
				
			}
			jspContext.setAttribute("message", msg);
		}else{
			jspContext.setAttribute("message", "Input your guess");
		}
	}
%>