<%@ page language="java" contentType="text/html;charset=utf-8;" pageEncoding="utf-8"%>

<meta charset="utf-8"/>

<form>
    <p>
        CarCode:<input type="text" name="carCode"/><br/>
        CarName:<input type="text" name="carName"/><br/>
        CarDate:<input type="date" name="carDate"/><br/>
    </p>
    <input type="submit"/>
</form>


<%
    String carCode = request.getParameter("carCode");
    String carName = request.getParameter("carName");
    String carDate = request.getParameter("carDate");

    if(carCode != "" && carName != "" && carDate != "" && carCode != null){
        out.println("Lastest input data: Carcode:" + carCode + " Carname:" + carName + " " + carDate);
%>
        <jsp:useBean id="aCar" class="com.khalil.Car"/>
        <jsp:setProperty name="aCar" property="carCode" value="<%=carCode%>"/>
        <jsp:setProperty name="aCar" property="carName" value="<%=carName%>"/>
        <jsp:setProperty name="aCar" property="carDate" value="<%=carDate%>"/>
<%
        aCar.writeFile();
        String showfile = aCar.showFile();
%>
        <p>History: <br/> <%=showfile%> . </p>
<%
    }
%>


