<%--
  Created by IntelliJ IDEA.
  User: Khalil
  Date: 2016/11/12
  Time: 11:45
  To change this template use File | Settings | File Templates.

视图由两个JSP页面组成：inputData.jsp和showResult.jsp。
 inputData.jsp页面提供一个表单，用户可以输入等差数列的首项、公差、求和项数，
 也可以输入等比数列的首项、公比和求和项数。inputData.jsp页面将用户输入的有
 关数据提交给一个名字为computerSum的servlet对象，computerSum负责计算等
 差数列的和以及等比数列的和。showResult.jsp页面可以显示等差数列和等比数列的求和结果。


--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>InputData</title>
    </head>

    <body style="text-align: center;">
        <form action="computerSum" method="get">
            <input type="text" value="dc" style="visibility:hidden">
            <p>
                等差数列:<br/>
                首项:<input type="text" name="a"/><br/>
                公差:<input type="text" name="d"/><br/>
                项数:<input type="text" name="n"/><br/>
                <input type="submit"/>
                <br/>
            </p>
        </form>

        <form action="computerSum" method="get">
            <input type="text" value="db" style="visibility:hidden">
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
