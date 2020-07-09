<%-- 
    Document   : db
    Created on : Apr 18, 2013, 7:56:05 PM
    Author     : sudha
--%>
 
<%@page import="java.sql.*" %>
<%
Class.forName("oracle.jdbc.driver.OracleDriver"); 
Connection co=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "cloudprovider", "cloudprovider");
Statement st=co.createStatement();

 
%>