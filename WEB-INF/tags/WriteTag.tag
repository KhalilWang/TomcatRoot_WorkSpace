<%@ tag import="java.util.*" %>

<%@ attribute name='filename' required="true" %>
<%@ attribute name='dir' required="true" %>
<%@ attribute name='content' required="true" %>

<%@ variable name-given='result' scope='AT_END' %>

<%

if(filename != null && dir != null && content != null){
		java.io.File file = new java.io.File(dir, filename);

		if (filename.equals("")) {
			out.println("Invalied Filename!");
		} else {
			java.io.FileWriter outfile = new java.io.FileWriter(file);
			outfile.write(content);
			outfile.close();
			
			jspContext.setAttribute("result", dir + filename + " written!\n");
		}
	}
%>