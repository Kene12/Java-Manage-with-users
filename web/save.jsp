<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save</title>
    </head>
    <body>
        <%  String pr = session.getAttribute("IDuser").toString();
            String username = null;
            String password = null;
            String firstname = null;
            String lastname = null;
            String email = null;
            String gender = null;
            String address = null;
            String priority = "user";
            if(request.getParameter("firstname") != null){
                firstname = request.getParameter("firstname");
            }
            if(request.getParameter("lastname") != null){
                lastname = request.getParameter("lastname");
            }
            if(request.getParameter("email") != null){
                email = request.getParameter("email");
            }
            if(request.getParameter("gender") != null){
                gender = request.getParameter("gender");
            }
            if(request.getParameter("address") != null){
                address = request.getParameter("address");
            }
            if(request.getParameter("username") != null){
                username = request.getParameter("username");
            }
            if(request.getParameter("password") != null){
                password = request.getParameter("password");
            }
            
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                connect = DriverManager.getConnection(url, user, passwd);
                preStm = connect.prepareStatement("INSERT INTO user (firstname,lastname,email,gender,address,username,password,priority) VALUES(?,?,?,?,?,?,?,?)");
                preStm.setString(1, firstname);
                preStm.setString(2, lastname);
                preStm.setString(3, email);
                preStm.setString(4, gender);
                preStm.setString(5, address);
                preStm.setString(6, username);
                preStm.setString(7, password);
                preStm.setString(8, priority);
                preStm.executeUpdate();
                out.println("User Record Added");
                connect.close();
            } catch (ClassNotFoundException msg){
                out.println(msg);
            } catch (SQLException msg){
                out.println(msg.getMessage());
                msg.printStackTrace();
            }
            if(pr.equals("admin")){
                response.sendRedirect("read.jsp");
            }else{
                response.sendRedirect("index.jsp");
            }
        
        %>
    </body>
</html>
