<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Strona Wylogowania</title>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <% session.invalidate(); %>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <center><b>Zostałeś poprawnie wylogowany!</b></center>
        <br>
        <center><a href="index.jsp">Powrót do strony głownej</a></center>
        <center><a href="login_form.jsp">Zaloguj się ponownie</a></center>
        
    </body>
</html>