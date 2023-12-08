<%@include file='lib.jsp'%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>

    <body>
        <h1>LOGIN</h1>
        <hr/>
        <form action="checklogin.jsp" method="post">
            <label>Username</label>
            <input name="username" id="username" maxlength="255" placeholder="Username" value=""> <br><br>
            <label>Password</label>
            <input type="password" id="password" name="password" maxlength="255" placeholder="Password" value=""> <br><br>
            <button type="submit" onclick="validLogin()" >login</button>
        </form>
        <a href="registeruser.jsp"><button type="submit">register</button></a>
    </body>
    <script>
        function validLogin() {
                
            if (document.getElementById("username").value == "") {
                alert("Please enter Login Name.");
                document.getElementById("username").focus();
            }else {
                if (document.getElementById("password").value == "") {
                    alert("Please enter password.");
                    document.getElementById("password").focus();
                }
            }

        }
    </script>
</html>
