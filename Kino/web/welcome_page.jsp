<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Witaj</title>
    </head>
    <body>
        
        <%  
            HttpSession sessionUser=request.getSession(false);  
            String us=(String)sessionUser.getAttribute("user");
            
            User user1 = new User();
            user1.setUser(us);
            user1.GetUser();
            
            out.print("Witaj ");
            out.print(user1.getFirst_name());
            out.print(" ");
            out.print(user1.getLast_name());
            out.print(" !!!");
        %>
                
        <br><br>
        <a href="logout.jsp">Log Out</a>
        <br><br>
        
        
                    
    </body>
</html>
