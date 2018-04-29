<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="beans.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" media="all">
        <title>Kino</title>
</head>

    <body>
     
    <center> <div id="pasek"><h1> >>> Witaj na stronie głównej kina! <<<</h1></div> </center>
     <div id="pasekmenu"><td>  
             <div id="zalogowano"><%  
            HttpSession sessionUser=request.getSession(false);  
            String us=(String)sessionUser.getAttribute("user");
            
            User user1 = new User();
            user1.setUser(us);
            user1.GetUser();
            
            out.print("Zalogowano:  ");
            out.print(user1.getFirst_name());
            out.print("  ");
            %></div>    
          <div id="repertuar"><a href="repertuar.jsp"><b>Repertuar</b></a> </div>
          <div id="logout"><a href="logout.jsp"> Wyloguj</a></div>
       
     </div>
        
        
        
        
        
        
       
    
    
    
    </body>
</html>
