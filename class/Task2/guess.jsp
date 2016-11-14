<%@ page contentType="text/html; Charset=utf-8" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="test" %>

<form>
	<p>Input Your Letter:</p>
	<input type='text' name='input'/>
	<input type='submit' value='Go!' />
</form>

<test:guess number="<%=request.getParameter("input")%>" />

<p><%=rst%></p>


