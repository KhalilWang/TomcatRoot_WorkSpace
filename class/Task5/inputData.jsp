<%--
  Created by IntelliJ IDEA.
  User: Khalil
  Date: 2016/11/12
  Time: 11:45
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>InputData</title>
    </head>

    <body style="text-align: center;">
        <form action="/computerSum" method="post">
            <input type="text" value="dc" style="visibility:hidden" name="type"/>
            <p>
                等差数列:<br/>
                首项:<input type="text" name="a"/><br/>
                公差:<input type="text" name="d"/><br/>
                项数:<input type="text" name="n"/><br/>
                <input type="submit"/>
                <br/>
            </p>
        </form>

        <form action="/computerSum" method="post">
            <input type="text" value="db" style="visibility:hidden" name="type"/>
            <p>
                等比数列:<br/>
                首项:<input type="text" name="a"/><br/>
                公比:<input type="text" name="d"/><br/>
                项数:<input type="text" name="n"/><br/>
                <input type="submit"/>
                <br/>
            </p>
        </form>
    </body>

</html>
