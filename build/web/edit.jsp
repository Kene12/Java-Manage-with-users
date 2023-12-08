<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit</title>
    </head>
    <body>
        <%
            String IDuserNew = null;
            String usernameNew = null;
            String passwordNew = null;
            String firstnameNew = null;
            String lastnameNew = null;
            String emailNew = null;
            String genderNew = null;
            String addressNew = null;
            String priority = null;
           if(request.getParameter("IDuser") != null){
                IDuserNew = request.getParameter("IDuser");
            }
            try{
                Class.forName("org.mariadb.jdbc.Driver");
                connect = DriverManager.getConnection(url, user, passwd);
                preStm = connect.prepareStatement("SELECT * FROM user WHERE IDuser = '"+IDuserNew+"'");
                rs = preStm.executeQuery();
                while (rs.next()){
                usernameNew = rs.getString("username");
                passwordNew = rs.getString("password");
                firstnameNew = rs.getString("firstname");
                lastnameNew = rs.getString("lastname");
                emailNew = rs.getString("email");
                genderNew = rs.getString("gender");
                addressNew = rs.getString("address");
                priority = rs.getString("priority");
            }
            connect.close();
            } catch(Exception msg){
                out.println(msg.getMessage());
                msg.printStackTrace();
            } 
         %>
         <p><h1>EDIT NEWS</h1></p>
    <hr/>
    <form action="update.jsp" method="post">
        <label>Edit</label>
        <input type="hidden" name="IDuser" value="<%=IDuserNew%>"><br><br>
        <input name="firstname" maxlength="255" value="<%=firstnameNew%>" placeholder="firstname"><br><br>
        <input name="lastname" maxlength="255" value="<%=lastnameNew%>" placeholder="lastname"><br><br>
        <input name="email" maxlength="255" value="<%=emailNew%>" placeholder="email"><br><br>
        <input name="gender" maxlength="255" value="<%=genderNew%>" placeholder="gender"><br><br>
        <input name="address" maxlength="255" value="<%=addressNew%>" placeholder="address"><br><br>
        <input name="username" maxlength="255" value="<%=usernameNew%>" placeholder="username"><br><br>
        <input name="password" maxlength="255" value="<%=passwordNew%>" placeholder="password"><br><br>
        <%
            if(priority.equals("user")){
         %>
            <select name="priority">
                <option value="user">user</option>
                <option value="admin">admin</option>
            </select><br><br>
         <%
             }else{
         %>
            <select name="priority">
                <option value="admin">admin</option>
                <option value="user">user</option>
            </select><br><br>
         <%
             }
         %>
        <button type="submit">Update</button>
    </form>
        <a href="read.jsp"><button type="submit">read</button></a>
    </body>
</html>
