<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%
           String IDuser = null;
           if(request.getParameter("IDuser") != null){
                IDuser = request.getParameter("IDuser");
            }
            try{
                Class.forName("org.mariadb.jdbc.Driver");
                connect = DriverManager.getConnection(url, user, passwd);
                preStm = connect.prepareStatement("DELETE FROM user wHERE IDuser = ?");
                preStm.setString(1, IDuser);
                preStm.executeUpdate();
                out.println("User Record deleted");
                connect.close();
            } catch(ClassNotFoundException msg){
                out.println(msg);
            } catch(SQLException msg){
                out.println(msg.getMessage());
                msg.printStackTrace();
            }
         %>
         <a href="read.jsp"><button type="button">read</button></a>
    </body>
</html>
