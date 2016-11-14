<%@ page language="java" contentType="text/html;charset=utf-8;" pageEncoding="utf-8"%>

<meta charset="utf-8"/>

<%@ page import="java.io.*,java.sql.*,java.util.*" %>

<%@ taglib tagdir="/WEB-INF/tags" prefix="test" %>

<%
    String q_number = request.getParameter("q_number");
%>

<test:NumberCondition number="<%=q_number%>"/>