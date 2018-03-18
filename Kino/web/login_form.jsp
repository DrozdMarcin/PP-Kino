<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">
        
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        
        
        <title>Logowanie</title>
    </head>
    <body>
    <center> <div id="pasek"><h1>Logowanie</h1></div> </center>
    <center>  <div id="pasekmenu">
            <a href="index.jsp"><b>Strona Główna</b></a>
            <td>
                
        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>

        <form action="LoginController" method="post">
            </br> </br> </br>
            <center>
                <center> <table border="5" width="15%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2"><center>Wprowadź dane logowania</center></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>    
                            <td>Login: </td>
                            <td><input type="text" name="user" value="<jsp:getProperty name="user" property="user"/>"></td>
                        </tr>
                        <tr>
                            <td>Hasło: </td>
                            <td><input type="password" name="pwd" value="<jsp:getProperty name="user" property="pwd"/>"></td>
                        </tr>
                        <tr>  
                            <td><center><a href="register_form.jsp">Zarejestruj sie!</a></center></td>
                            <td><center><input type="submit" value="Zaloguj"></center></td>
        
                        </tr>
                    </tbody>             
                </table> </center>
            </center>
        </form>
         
                  
                        
    </body>
</html>
