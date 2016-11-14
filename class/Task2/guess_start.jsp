<%@ page contentType="text/html; Charset=utf-8" %>

<html>
	<head>Guess Letter</head>
	<body>
		<h3>Guess a letter from a to z!</h3>
		<%
			int num = (int) (Math.random() * 26);
			char ch = 'a';
			ch += num;
			session.setAttribute("count", new Integer(0));
			session.setAttribute("save", new Integer(num));
		%>
		<a href='guess.jsp'> Guess It! </a>
	</body>
</html>