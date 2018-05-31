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

            <div class="row">

                <div class="col-lg-4">

                </div>
                <div class="acconunt-info card col-lg-4">
                    <div class="card-header">
                        <% out.print(user1.getUser()); %>
                    </div>
                    <div class="card-body">
                        <jsp:useBean id="user" scope="request" class="beans.User"></jsp:useBean>

                            <form action="LoginController" method="post">

                                <div class=" form-group">
                                    <b>Imię:</b> <% out.print(user1.getFirst_name()); %> <br>
                                <b>Nazwisko: </b> <% out.print(user1.getLast_name()); %> <br>
                                <b>e-mail:</b> <% out.print(user1.getEmail());%> <br>
                            </div>
                        </form>       
                    </div>
                </div>
            </div>


        </div>
        <%-- wczytanie stałej stopki--%>
        <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
