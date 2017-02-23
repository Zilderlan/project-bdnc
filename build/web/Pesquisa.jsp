<%-- 
    Document   : index
    Created on : 21/02/2017, 08:34:27
    Author     : Zilderlan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="br.edu.ifpb.bdncentities.User"%>
<%
    User user = (User) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" href="css/menuStyle.css">
        <script src="js/main-map.js" type="text/javascript"></script>
        <link rel="stylesheet" href="style.css">
        <script src=""></script>
        <script src="js/main_coords.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js" ></script>
        <link rel="stylesheet" href="css/menuStyle_1.css">
        <script defer src="js/main.js" type="text/javascript"></script>
        <script src="js/jquery.min.js"></script>
        <script src="js/ajax.js"></script>
    </head>
    <body onload="getLocation()" style="background: #fff;">

        <header>
            <input type="checkbox" id="btn-menu" >
            <nav class="menu">
                <label for="btn-menu" class="icon-menu"></label>
                <ul>

                    <li><a href="Home.jsp"><span class="icon-home left"></span>Home<span class=" right"></span></a></li>

                    <li class="submenu" onclick="document.getElementById('dialog').style.display = 'block';"><a href="#window-search" name="modal"><span class="icon-plus left"></span>Criar Enquete<span class="icon-circle-down right"></span></a>
                    </li>
                    <li onclick="document.getElementById('dialog-search').style.display = 'block';"><a href="#" name="modal"><span class="icon-eye left"></span>Pesquisar Enquetes<span class="icon- right"></span></a></li>
                </ul>
                <div id="logout" style="float: right; width: 7%; margin: -5% 0 0 0;"><a href="logoutservlet.do">Sair</a></div>

            </nav>



        </header>

        <section>
            <article style="margin: 2% 31%; width: 38%; float: left; border: 2px solid #f3f3f3; border-radius: 10px;">
                
                <c:forEach var="listE" items="${listEnquete}">
                    <div style="margin: 5% 2%;">
                        <h1>${msgErr}</h1>
                        <h2><a href="pesquisaservlet.do?param=${listE.id}" >${listE.title}</a></h2>
                        <div style="margin: 1% 2%">
                            <a href="visualizarenqueteservlet.do?param=${listE.id}" style="float: left">Visualizar</a>
                            <a href="pesquisaservlet.do?param=${listE.id}" style="float: right">Votar</a>
                        </div>
                    </div>
                        <hr>
                </c:forEach>
            </article>
            <section>

            </section>
    </body>
</html>
