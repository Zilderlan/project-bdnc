<%-- 
    Document   : index
    Created on : 21/02/2017, 08:34:27
    Author     : Zilderlan
--%>

<%@page import="br.edu.ifpb.bdncentities.User"%>
<%@page import="br.edu.ifpb.bdncentities.Survey"%>
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

                    <li><a href="#"><span class="icon-home left"></span>Home<span class=" right"></span></a></li>
                    <li class="submenu"><a href="" onclick="getLocation()"><span class="icon-users left"></span>Cadastro</span></a>
                        <!--
                        <ul>
                                <li><a href=""><span class="icon-home"></span>Sub item 1</a></li>
                                <li><a href=""><span class="icon-home"></span>Sub item 2</a></li>
                                <li><a href=""><span class="icon-home"></span>Sub item 3</a></li>
                                <li><a href=""><span class="icon-home"></span>Sub item 4</a></li>
                        </ul>
                        -->
                    </li>
                    <li><a href="#window-login" name="modal"><span class="icon-enter left"></span>Login<span class="icon- right"></span></a></li>
                    <li class="submenu"><a href="#window-search" name="modal"><span class="icon-plus left"></span>Criar Enquete<span class="icon-circle-down right"></span></a>
                        <ul>
                            <li><a href=""><span class="icon-home left"></span>Sub item 1</a></li>
                            <li><a href=""><span class="icon-home left"></span>Sub item 2</a></li>
                            <li><a href=""><span class="icon-home left"></span>Sub item 3</a></li>
                            <li><a href=""><span class="icon-home left"></span>Sub item 4</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><span class="icon-eye left"></span>Enquetes<span class="icon- right"></span></a></li>
                    <li><a href="#"><span class="icon-home left"></span>item 5<span class="icon- right"></span></a></li>
                </ul>
                <div id="logout" style="float: right; width: 7%; margin: -5% 0 0 0;"><a href="#">Sair</a></div>

            </nav>



        </header>


        <section>
            <article id="window-search" class="window" style="height: auto; margin-top: 8%;">
                <h1>${enquete.title}<span class="close icon-cross"></span></h1>

                <form action="registrespenquete.do" method="post" id="" class="mais-filtros">
                    <div class="left" style="margin: 2%">

                        <label for="">Sim</label>
                        <input id="cb1" type="checkbox" value="sim" name="resp" class="cb"  onclick="SetSel(this);"><br>
                        <label for="">Não</label>
                        <input id="cb2" type="checkbox" value="nao" name="resp" class="cb"  onclick="SetSel(this);"><br>
                        <label for="">Não sei</label>
                        <input id="cb3" type="checkbox" value="indeciso" name="resp" class="cb" onclick="SetSel(this);"><br>
                    </div>
                    
                    <div id="b" style="width: 100%; float: left; margin: 4% 0 0 9%">
                        <button style="width: 35%; height: 25px;" type="reset" id="r" class="" value=""><span class="icon-cross"></span>Limpar</button>
                        <button style="width: 35%; height: 25px; margin: 0 0% 0 4%"type="submit" id="" class="" ><span class="icon-checkmark"></span>Votar</button>
                    </div>
                    <script type="text/javascript">

                        function SetSel(elem)
                        {
                            var elems = document.getElementsByClassName("cb");
                            var currentState = elem.checked;
                            var elemsLength = elems.length;

                            for (i = 0; i < elemsLength;
                                    i++
                                    )
                            {
                                if (elems[i].type === "checkbox")
                                {
                                    elems[i].checked = false;
                                }
                            }

                            elem.checked = currentState;
                        }

                    </script>
                </form>
            </article>
        </section>
        <script async defer src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAeoE-otECfZjW9k5ExYcj0UWS6V2MUu1g&callback=initialize"></script>
    </body>
</html>