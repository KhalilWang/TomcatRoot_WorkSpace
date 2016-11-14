

<form action="" method=post name=form>
	<input type="password" name="passwd">
	<input type="text" name="username">
	<input type="submit" value="GOGOGOGO" name=submit>
</form>

<% String passwd = request.getParameter("passwd");
	if(passwd == null){
		out.println("input passwd!");
	}else{
		out.println(passwd);
	}
%>
