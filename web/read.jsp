<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read</title>
    </head>
    <body>
        <h1>Welcome Admin</h1>
        <table border="1" class="table">
            <thead>
            <th>ID</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
            <th>Gender</th>
            <th>Address</th>
            <th>Username</th>
            <th>Password</th>
            <th>priority</th>
            <th>CMD</th>
            </thead>
            <tbody>
                <%
                  try {
                    Class.forName("org.mariadb.jdbc.Driver");
                    connect = DriverManager.getConnection(url, user, passwd);
                    preStm = connect.prepareStatement("SELECT * FROM user");
                    rs = preStm.executeQuery();
                    ResultSetMetaData metaData = rs.getMetaData();
                    q = metaData.getColumnCount();
                    while(rs.next()){  
                 %>
                 <tr>
                     <td><%=rs.getString("IDuser")%> </td>
                     <td><%=rs.getString("firstname")%> </td>
                     <td><%=rs.getString("lastname")%> </td>
                     <td><%=rs.getString("email")%> </td>
                     <td><%=rs.getString("gender")%> </td>
                     <td><%=rs.getString("address")%> </td>
                     <td><%=rs.getString("username")%> </td>
                     <td><%=rs.getString("password")%> </td>
                     <td><%=rs.getString("priority")%> </td>
                     <td>
                         <a href="delete.jsp?IDuser=<%=rs.getString("IDuser")%>">delete</a>
                         <a href="edit.jsp?IDuser=<%=rs.getString("IDuser")%>">update</a>
                     </td>
                 </tr>
                 <%
                     }
                     connect.close();
                    }catch(Exception msg){
                        out.println(msg.getMessage());
                        msg.printStackTrace();
                    }
                 %>
            </tbody>
        </table>
            <a href="register.jsp"><button type="button">register</button></a>
            <a href="index.jsp"><button type="button">logOut</button></a>
    </body>
</html>
