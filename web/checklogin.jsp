<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CheckLogin</title>
    </head>
    <body>
        <%  
            String username = null;
            String password = null;
            String prioriy = null;
            String IDuser = null;
            if(request.getParameter("username") != null){
                username = request.getParameter("username");
            }
            if(request.getParameter("password") != null){
                password = request.getParameter("password");
            }
            
            
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                connect = DriverManager.getConnection(url, user, passwd);
                preStm = connect.prepareStatement("SELECT * FROM user WHERE username = ? AND password = ?");
                preStm.setString(1, username);
                preStm.setString(2, password);
                rs = preStm.executeQuery();
                ResultSetMetaData metaData = rs.getMetaData();
                q = metaData.getColumnCount();
                if(!rs.next()){
                    response.sendRedirect("index.jsp");
                }else{
                    IDuser = rs.getString("IDuser");
                    prioriy = rs.getString("priority");
                    if(prioriy.equals("admin")){
                        response.sendRedirect("read.jsp");
                    }else if(prioriy.equals(null)){
                        session.setAttribute("IDuser",IDuser);
                        response.sendRedirect("readuser.jsp");
                    }else{
                        session.setAttribute("IDuser",IDuser);
                        response.sendRedirect("readuser.jsp");
                    }
                }
            } catch (ClassNotFoundException msg){
                out.println(msg);
            } catch (SQLException msg){
                out.println(msg.getMessage());
                msg.printStackTrace();
            }
        %>
    </body>
</html>
