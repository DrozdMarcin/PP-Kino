<%@page import="beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% HttpSession sessionUser = request.getSession(true);
    String us = (String) sessionUser.getAttribute("user");

    User user1 = new User();
    user1.setUser(us);
    user1.GetUser(); %>

<div class="container-fullwidth">
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="../index.jsp"><img src="img/logo.png" style="max-width:70px; margin-top: -7px;"></a>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">


                        <li class="nav-item">
                            <a class="nav-link" href="repertuar.jsp">
                                <span class="glyphicon glyphicon-film"></span> 
                                Repertuar
                            </a>
                        </li>
                        
                        <% if (user1.getUser() != null) { %>   

                        
                        
                        <li class="nav-item">
                            <a class="nav-link" href="myaccount.jsp">   
                                <span class="glyphicon glyphicon-user"></span> 
                                <span class="account-name">
                                    
                                <%
                                    out.print(user1.getFirst_name());
                                %>
                                </span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout.jsp"> Wyloguj</a>
                        </li>
                        <% } else {%>
                        <li class="nav-item">
                            <a class="nav-link" href="register_form.jsp">Rejestracja</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login_form.jsp">Logowanie</a>
                        </li>
                        <% }%> 
                    </ul>
                </div>
            </div>
        </nav>
    </header>
</div>

