<%@ tag import="java.util.*" %>

<%@ attribute name='filename' required="true" %>
<%@ attribute name='dir' required="true" %>

<%@ variable name-given='result' scope='AT_END' %>

<%

if(filename != null && dir != null){
		java.io.File file = new java.io.File(dir, filename);

		if (filename.equals("")) {
			out.println("Invalied Filename!");
		} else {
			java.io.FileReader freader=new java.io.FileReader(file);
			java.io.BufferedReader bfdreader=new java.io.BufferedReader(freader);
			String line = bfdreader.readLine();
		    while(line != null) {
		       out.println(line + "<br>");
		       line=bfdreader.readLine();
		    }
		    bfdreader.close();
		    freader.close();
			
			jspContext.setAttribute("result", "<hr> <br/>" + dir + filename + " Read!\n");
		}
	}
%>