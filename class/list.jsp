<%@ page contentType="text/html; Charset=utf-8" %>

<html>
	<head>
		<title>List</title>
		<style type="text/css">
			body{
				text-align: center;
				align: center;
			}			

			table, tr, td{
				text-align: center;
				align: auto, 0;
				border: 1px solid blue;
			}
		</style>
	</head>

	<body>
		<% int i = 0, j =0;%>
		<% char ch = 'a';  %>
		<table>
			<%
				for(i=0; i<2; i++){
					out.println("<tr>");
					for(j=0; j<26; j++){
						out.println("<td>");
						out.println(ch);
						out.println("</td>");
						ch++;
					}
					out.println("</tr>");
					ch = 'A';
				}
			%>
		</table>
	</body>
</html>




