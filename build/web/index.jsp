<%-- 
    Document   : index
    Created on : 20/02/2017, 13:17:13
    Author     : Zilderlan
--%>

<%@page import="br.edu.ifpb.bdncentities.User"%>
<%
    User user = (User) session.getAttribute("user");
    if (user != null) {
        response.sendRedirect("Home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" href="css/menuStyle.css">
        <link rel="stylesheet" href="style.css">
        <script src=""></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js" ></script>
        <script defer src="js/main.js" type="text/javascript"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/ajax.js"></script>
    </head>
    <body onload="sizeOfThings()"style="background-color: #333333; opacity: 1;" >

        <header>


        </header>


        <section>

            <article id="window-login" class="window" >
                <h1>Login: <span class=""></span></h1>

                <form action="loginservlet.do" id="" class="record " method="post">
                    <h6 style="margin:0 0 0 30%; color: red;">${msg}</h6>
                    <div>
                        <label for="txt-email" class="" id="">Email</label>
                        <input type="text" class="" id="txt-email" placeholder="Login" name="email" value="zilderlan123@gmail.com">
                    </div>
                    <div>
                        <label for="txt-password" class="" id="">Senha</label>
                        <input type="password" class="" value="0000" id="txt-password" placeholder="Password" name="password">
                    </div>
                    <div id="b">
                        <button type="submit" id="" class="" ><span class="icon-checkmark"></span>Login</button>
                        <button type="reset" id="r" class="" value=""><span class="icon-cross"></span>Limpar</button>
                    </div>
                    <a href="map.jsp"><h3> OU cadastre-se</h3></a>
                </form>
            </article>

        </section>
        <section></section>



    </body>
</html>
