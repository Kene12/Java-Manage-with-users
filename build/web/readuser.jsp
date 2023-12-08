<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <title>Read</title>
    </head>
    <body>  
                <center>
                <%
                  String IDuser = session.getAttribute("IDuser").toString();
                  if(request.getParameter("IDuser") != null){
                    IDuser = request.getParameter("IDuser");
                  }
                  try {
                    Class.forName("org.mariadb.jdbc.Driver");
                    connect = DriverManager.getConnection(url, user, passwd);
                    preStm = connect.prepareStatement("SELECT * FROM user WHERE IDuser = '"+IDuser+"'");
                    rs = preStm.executeQuery();
                    ResultSetMetaData metaData = rs.getMetaData();
                    q = metaData.getColumnCount();
                    session.setAttribute("IDuser",IDuser);
                    while(rs.next()){  
                 %>
                <dev class="container-sm">
                    <dev class="row">
                        <dev class="col-sm-5"></dev>
                     <h3 class="col-sm-1" style="padding-right: 0px; padding-left: 0px;"><%=rs.getString("firstname")%> </h3>
                     <h3 class="col-sm-1" style="padding-right: 0px; padding-left: 0px;"><%=rs.getString("lastname")%> </h3>
                        <dev class="col-sm-7"></dev>
                    </dev>
                     <h3><%=rs.getString("email")%> </h3>
                     <h3><%=rs.getString("gender")%> </h3>
                     <h3><%=rs.getString("address")%> </h3>
                     <h3><%=rs.getString("username")%> </h3>
                     <h3><%=rs.getString("password")%> </h3>
                     
                </dev>
                     <a href="edituser.jsp"><button type="button">update</button></a>
                 <%
                     }
                     connect.close();
                    }catch(Exception msg){
                        out.println(msg.getMessage());
                        msg.printStackTrace();
                    }
                 %>
            <a href="index.jsp"><button type="button">logOut</button></a>
            </center>
    </body>
    
</html>
