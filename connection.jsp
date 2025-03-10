<%@page import="java.sql.*" %>
<%
Class.forName ("oracle.jdbc.driver.OracleDriver");
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "vinhitha");  
%>