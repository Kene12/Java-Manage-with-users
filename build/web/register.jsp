<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%
           session.setAttribute("IDuser","admin");
        %>
        <h1>Register</h1>
        <hr/>
        <form action="save.jsp" method="post">
            <label>FirstName</label>
            <input name="firstname" maxlength="255" placeholder="First name"> <br><br>
            <label>LastName</label>
            <input name="lastname" maxlength="255" placeholder="Last name"> <br><br>
            <label>Email</label>
            <input name="email" maxlength="255" placeholder="Email"> <br><br>
            <label>Gender</label>
            <select name="gender">
                <option value="NULL">Gender</option>
                <option value="Agender">Agender</option>
                <option value="Bigender">Bigender</option>
                <option value="Female">Female</option>
                <option value="Genderfluid">Genderfluid</option>
                <option value="Genderqueer">Genderqueer</option>
                <option value="Male">Male</option>
                <option value="Non-binary">Non-binary</option>
                <option value="Polygender">Polygender</option>
            </select><br><br>
            <label>Ip Address</label>
            <input name="address"  maxlength="255" placeholder="Ip Address"> <br><br>
            <label>Username</label>
            <input name="username" id="username"  maxlength="255" placeholder="username" value=""> <br><br>
            <label>Password</label>
            <input type="password" id="password"  name="password" maxlength="255" placeholder="password" value=""> <br><br>
            
            <button type="submit" onclick="return validLogin();">Save</button>
        </form><br>
        <input type="button" value="Back" onclick="javascript:history.go(-1)">
    </body>
    <script>
        function validLogin() {
                
            if (document.getElementById("username").value == "") {
                alert("Please enter Login Name.");
                document.getElementById("username").focus();
                return false;
            }else {
                if (document.getElementById("password").value == "") {
                    alert("Please enter password.");
                    document.getElementById("password").focus();
                    return false;
                }
            }
            return true;

        }
    </script>
</html>
