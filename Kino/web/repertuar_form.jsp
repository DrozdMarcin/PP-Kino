<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.Repertuar"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">
        <title>Dodawanie repertuaru</title>
    </head>
    <body>
    <center> <div id="pasek"><h1> Dodawanie repertuaru </h1></div> </center>
    <center>  <div id="pasekmenu"><td>
                </br></br></br>
                
        <jsp:useBean id="repertuar" scope="request" class="beans.Repertuar"></jsp:useBean>
 
        <form action="RepertuarController" method="post">
            <center>
                <table border="5" width="15%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Formularz dodawanie repertuaru</th>
                        </tr>
                    </thead>
                    <tbody>
                        <td>Tytul filmu: </td>
                            <td><input type="text" name="tytul" value="<jsp:getProperty name="repertuar" property="tytul"/>"></td>
                        <tr>    
                            <td>Krótki opis: </td>
                            <td><input type="text" name="opis" value="<jsp:getProperty name="repertuar" property="opis"/>"></td>
                        </tr>
                        <tr>    
                            <td>Godziny projekcji: </td>
                            <td><input type="text" name="godziny" value="<jsp:getProperty name="repertuar" property="godziny"/>"></td>
                        </tr>
                        
                        <tr>    
                            <td>Bilety normalne /szt.: </td>
                            <td><input type="text" name="biletynorm" value="<jsp:getProperty name="repertuar" property="biletynorm"/>"></td>
                        </tr>
                        <tr>
                            <td>Bilety ulgowe /szt.</td>
                            <td><input type="text" name="biletyulg" value="<jsp:getProperty name="repertuar" property="biletyulg"/>"></td>
                        </tr>
                        
                        <tr>
                            <td><center><input type="reset" value="Resetuj" /></center></td>
                            <td><center><input type="submit" value="Dodaj film"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>
                     
                   
    </body>
</html>
