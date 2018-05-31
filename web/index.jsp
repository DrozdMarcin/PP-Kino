<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>

<!DOCTYPE html>
<html>
    <head>
      <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/head.jsp" />
    </head>


    <body>
        <%-- wczytanie stałego nagłówka --%>
        <jsp:include page="subsites/header.jsp" />
        <div id="main-container-index" class="container-fluid">
            <div class="caption">
                  <span class="border">PROJEKT KINA</span><br>
            </div>            
            
        </div>
            <%-- wczytanie stałej stopki--%>
            <jsp:include page="subsites/footer.jsp" />

    </body>
</html>
