<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<% HttpSession sessionUser = request.getSession(false);
    String us = (String) sessionUser.getAttribute("user");

    User user1 = new User();
    user1.setUser(us);
    user1.GetUser(); %>
    
<!DOCTYPE html>
<html>
    <head>
        <title>Moje konto</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">

        <%-- dodanie wsparcia dla bootstrapa --%>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">         
        <script src="bootstrap/js/bootstrap.min.js"></script>     

    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container" class="container">
            <div style="width: 500px; margin-left: auto; margin-right: auto;">
                <center><h1>Moje konto</h1></center> 
                <br />
                <ul style="list-style-type: none; font-size: 24px;">
                    <li>
                        <b>Imię:</b> <% out.print(user1.getFirst_name()); %>
                    </li>
                    <br />
                    <li>
                        <b>Nazwisko:</b> <% out.print(user1.getLast_name()); %>
                    </li>
                    <br />
                    <li>
                        <b>Email:</b> <% out.print(user1.getEmail()); %>
                    </li>
                    <br />
                    <li>
                        <b>Nazwa użytkownika:</b> <% out.print(user1.getUser()); %>
                    </li>
                </ul>
            </div>
        </div>
        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
