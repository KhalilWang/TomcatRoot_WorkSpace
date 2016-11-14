<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="com.khalil.Data" %>
<jsp:useBean id="data" class="com.khalil.Data" scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Result!</title>
    </head>
    <body >
        <jsp:getProperty property="rst" name="data" />
    </body>
</html>