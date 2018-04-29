<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">

        <title>Kino</title>
        
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">         
        <script src="bootstrap/js/bootstrap.min.js"></script>     

</head>

    <body>

        <jsp:include page="subsites/header.jsp" /><br><br>
    <center> <div id="pasek"><h1> >>> Witaj na stronie głównej kina! <<<</h1></div> </center>
    <center>  <div id="pasekmenu"><td>
        <a href="repertuar.jsp"><b>Repertuar</b></a>
        <a href="register_form.jsp"><b>Rejestracja</b></a>
        <a href="login_form.jsp"><b>Logowanie</b></a>        
        

         </center>
    
    
    
    </body>
</html>
