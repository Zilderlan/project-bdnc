<%-- 
    Document   : index
    Created on : 21/02/2017, 08:34:27
    Author     : Zilderlan
--%>

<%@page import="br.edu.ifpb.bdncentities.User"%>
<%
    User user = (User) session.getAttribute("user");
    if (user == null)
        response.sendRedirect("index.jsp");
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
    <body onload="getLocation()">

        <header>
            <input type="checkbox" id="btn-menu" >
            <nav class="menu">
                <label for="btn-menu" class="icon-menu"></label>
                <ul>

                    <li><a href="Home.jsp"><span class="icon-home left"></span>Home<span class=" right"></span></a></li>
                   
                    <li class="submenu" onclick="document.getElementById('dialog').style.display='block';"><a href="#window-search" name="modal"><span class="icon-plus left"></span>Criar Enquete<span class="icon-circle-down right"></span></a>
<!--                        <ul>
                            <li><a href=""><span class="icon-home left"></span>Sub item 1</a></li>
                            <li><a href=""><span class="icon-home left"></span>Sub item 2</a></li>
                            <li><a href=""><span class="icon-home left"></span>Sub item 3</a></li>
                            <li><a href=""><span class="icon-home left"></span>Sub item 4</a></li>
                        </ul>-->
                    </li>
                    <li onclick="document.getElementById('dialog-search').style.display='block';"><a href="#" name="modal"><span class="icon-eye left"></span>Pesquisar Enquetes<span class="icon- right"></span></a></li>
                </ul>
                <div id="logout" style="float: right; width: 7%; margin: -5% 0 0 0;"><a href="logoutservlet.do">Sair</a></div>

            </nav>



        </header>

        
        <section>
            <article id="dialog" class="window" style="height: 300px; margin-top: 8%;">
                <form action="criaenqservlet.do" method="post" class="form record" >
                    <h2 style="text-align: center">Nova Enquete</h2>
                    <div>
                        <textarea style="width: 100%; height: 150px; margin: 1% 0 0 2.5%;"id="enquete" name="enquete" maxlength="200">
                        </textarea>
                    </div>
                    <div style="margin: 0 0 0 0%;">
                        <button class="close" id="" type="reset" onclick="document.getElementById('dialog').style.display='none';"><span class="icon-cross"></span>Cancelar</button>
                        <button class="" id="add-right" type="submit"><span class="icon-checkmark"></span>Cadastrar</button>
                    </div>
                </form>
            </article>
        <section>
            <article id="dialog-search" class="window" style="height: 210px; margin-top: 8%;">
                <form action="buscarenquetenome.do" method="post" class="form record" >
                    <h2 style="text-align: center">Pesquisar</h2>
                    <div>
                        <input type="text" style="width: 101%; height: 50px; margin: 1% -3% 2% 0%;"id="enquete" name="pesquisa-enquete" >
                       
                    </div>
                    <div style="margin: 0 0 0 0%;">
                        <button class="close" id="" type="reset" onclick="document.getElementById('dialog').style.display='none';"><span class="icon-cross"></span>Cancelar</button>
                        <button class="" id="add-right" type="submit"><span class="icon-checkmark"></span>Buscar</button>
                    </div>
                    <div style="float: right; margin: 1% 2%;">
                        <a href="pesquisaservlet.do">Ou buscar todas</a>
                    </div>
                </form>
            </article>
            
              
            
            <div id="map-canvas" style="float: left; position: absolute; width: 100%; height: 100%; ">
            </div>


        </section>
                <div id="mask"></div>
        <script async defer src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAeoE-otECfZjW9k5ExYcj0UWS6V2MUu1g&callback=initialize"></script>
    </body>
</html>