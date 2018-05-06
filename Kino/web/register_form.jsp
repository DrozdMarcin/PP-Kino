<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">
        <title>Formularz rejestracji</title>
    </head>
    <body>
    <center> <div id="pasek"><h1> Rejestracja </h1></div> </center>
    <center>  <div id="pasekmenu"><td>
                </br></br></br>
                
        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>
 
        <form action="RegisterController" method="post">
            <center>
                <table border="5" width="15%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Formularz rejestracji klienta</th>
                        </tr>
                    </thead>
                    <tbody>
                        <td>Adres e-mail: </td>
                            <td><input type="text" name="email" required pattern="[^ @]*@[^ @]*" value="<jsp:getProperty name="user" property="email"/>"></td>
                        <tr>    
                            <td>Imie: </td>
                            <td><input type="text" name="first_name" required pattern="[A-Za-z]{1,15}" value="<jsp:getProperty name="user" property="first_name"/>"></td>
                        </tr>
                        <tr>    
                            <td>Nazwisko: </td>
                            <td><input type="text" name="last_name" required pattern="[A-Za-z]{1,15}" value="<jsp:getProperty name="user" property="last_name"/>"></td>
                        </tr>
                        
                        <tr>    
                            <td>Login: </td>
                            <td><input type="text" name="user" required value="<jsp:getProperty name="user" property="user"/>"></td>
                        </tr>
                        <tr>
                            <td>Haslo: </td>
                            <td><input type="password" name="pwd" required maxlength = "10" value="<jsp:getProperty name="user" property="pwd"/>"></td>
                        </tr>
                        
                        <tr>
                            <td><center><input type="reset" value="Resetuj" /></center></td>
                            <td><center><input type="submit" value="Zarejestruj"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>
                              
    </body>
</html>
