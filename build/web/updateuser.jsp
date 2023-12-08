<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%
            String IDuser = null;
            String usernameNew = null;
            String passwordNew = null;
            String firstnameNew = null;
            String lastnameNew = null;
            String emailNew = null;
            String genderNew = null;
            String addressNew = null;
            if(request.getParameter("IDuser") != null){
                IDuser = request.getParameter("IDuser");
            }
            if(request.getParameter("firstname") != null){
                firstnameNew = request.getParameter("firstname");
            }
            if(request.getParameter("lastname") != null){
                lastnameNew = request.getParameter("lastname");
            }
            if(request.getParameter("email") != null){
                emailNew = request.getParameter("email");
            }
            if(request.getParameter("gender") != null){
                genderNew = request.getParameter("gender");
            }
            if(request.getParameter("address") != null){
                addressNew = request.getParameter("address");
            }
            if(request.getParameter("username") != null){
                usernameNew = request.getParameter("username");
            }
            if(request.getParameter("password") != null){
                passwordNew = request.getParameter("password");
            }
            try{
                Class.forName("org.mariadb.jdbc.Driver");
                connect = DriverManager.getConnection(url, user, passwd);
                preStm = connect.prepareStatement("UPDATE user SET firstname = ?,lastname = ?,email = ?,gender = ?,address = ?,username = ?,password = ? WHERE IDuser = ?");
                preStm.setString(1, firstnameNew);
                preStm.setString(2, lastnameNew);
                preStm.setString(3, emailNew);
                preStm.setString(4, genderNew);
                preStm.setString(5, addressNew);
                preStm.setString(6, usernameNew);
                preStm.setString(7, passwordNew);
                preStm.setString(8, IDuser);
                preStm.executeUpdate();
                response.sendRedirect("readusers.jsp");
                session.setAttribute("IDuser",IDuser);
                connect.close();
            } catch(ClassNotFoundException msg){
                out.println(msg);
            } catch(SQLException msg){
                out.println(msg.getMessage());
                msg.printStackTrace();
            }
         %>
    </body>
    <a href="readuser.jsp"><button type="submit">read</button></a>
</html>
