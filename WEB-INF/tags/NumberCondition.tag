<%@ attribute name="number" required="True" %>
<%@ tag import="java.io.*,java.util.*,java.sql.*" %>

<%
    Connection con;
    Statement sql;
    ResultSet Rs;
    try {
        Class.forName("org.gjt.mm.mysql.Driver");
    } catch (Exception e) {
        out.print(e);
    }

    try {
        String url = "jdbc:mysql://localhost:3306/JDBC?useUnicode=true&characterEncoding=utf-8";
        String user = "root";
        String password = "hsgwpj";

        con = DriverManager.getConnection(url, user, password);
        sql = con.createStatement();
        Rs = sql.executeQuery("select * from student where number = " + number + ";");
        jspContext.setAttribute("Rs", Rs);

        out.print("You're query for number:" + number );

        out.print("<table border=5>");
        out.print("<tr>");
        out.print("<th width=100>" + "number");
        out.print("<th width=100>" + "name");
        out.print("<th width=100>" + "birthday");
        out.print("<th width=100>" + "email");
        out.print("</tr>");
        while (Rs.next()) {
            out.print("<tr>");
            out.print("<td>" + Rs.getString(1) + "</td>");
            out.print("<td>" + Rs.getString(2) + "</td>");
            out.print("<td>" + Rs.getDate("birthday") + "</td>");
            out.print("<td>" + Rs.getString(4) + "</td>");
            out.print("</tr>");
        }



    } catch (SQLException e) {
        out.print(e);
    }
%>