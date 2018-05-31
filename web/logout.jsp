<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Wylogowano</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">

        <%-- dodanie wsparcia dla bootstrapa --%>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">         
        <script src="bootstrap/js/bootstrap.min.js"></script>     

    </head>

    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />

        <div id="main-container"  class="container">

            <div class="row">

                <div class="alert alert-primary" role="alert" style="width:50%; margin-left: 25%;">
                    <% session.invalidate();%>
                    <center>
                        <h2>Zostałeś poprawnie wylogowany!</h2>
                        <br>
                        <a class="btn btn-primary" href="index.jsp">Powrót do strony głownej</a>
                        <a class="btn btn-primary" href="login_form.jsp">Zaloguj się ponownie</a>

                        <br>
                        <br>
                        <br>
                    </center>

                </div>
            </div>
        </div>

        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
