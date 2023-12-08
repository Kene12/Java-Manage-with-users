<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSetMetaData" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
    final String url = "jdbc:mariadb://localhost:3306/user?characterEncoding=utf8";
    final String user = "root";
    final String passwd = "";
    
    Connection connect = null;
    PreparedStatement preStm = null;
    PreparedStatement preStm2 = null;
    ResultSet rs = null;
    int q, i, id, deleteData;
    
    %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
