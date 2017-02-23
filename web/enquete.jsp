<%-- 
    Document   : index
    Created on : 21/02/2017, 08:34:27
    Author     : Zilderlan
--%>

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
            <label for="btn-menu" class="icon-menu"></label>
            <nav class="menu">
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
            </nav>

        </header>
                    <article id="window-search" class="window">
                <h1>${enquete.title}<span class="close icon-cross"></span></h1>

                <h3>TOTAL: ${total} <span>votos</span></h3>
                <h3>SIM: ${sim}<span>%</span></h3>
                <h3>NÃO: ${nao}<span>%</span></h3>
                <h3>NÃO SEI: ${indeciso}<span>%</span></h3>
                <hr>
                <h3>Filtros</h3>



                <form action="buscarenquetefiltroservlet.do" method="post" id="" class="mais-filtros">
                    <div class="left">
                        <h3>Sexo</h3>
                        <label for="">Masculino</label>
                        <input id="cb1" type="checkbox" value="m" name="sexo" class="cb"  onclick="SetSel(this);"><br>
                        <label for="">Feminino</label>
                        <input id="cb2" type="checkbox" value="f" name="sexo" class="cb"  onclick="SetSel(this);"><br>
                        <label for="">Outros</label>
                        <input id="cb3" type="checkbox" value="o" name="sexo" class="cb" onclick="SetSel(this);"><br>
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
                    <div class="right">
                        <h3>Idade</h3>
                        <label for="">Entre 12 e 18</label>
                        <input id="cb4" type="checkbox" value="age-12-18" name="idade" class="cb"  ><br>
                        <label for="">Entre 19 e 25</label>
                        <input id="cb5" type="checkbox" value="age-19-25" name="idade" class="cb"  ><br>
                        <label for="">Acima de 25</label>
                        <input id="cb6" type="checkbox" value="age-up-25" name="idade" class="cb" ><br>
                    </div>

                    <div>
                        <button type="button" onclick="document.getElementById('mais-filtros').style.display = 'block';">Mais filtros</button>
                        <input type="submit" value="Filtrar" style="float: right;">
                    </div>

                    <div id="mais-filtros">
                        <div class="left">
                            <h3>Renda</h3>
                            <label for="">Menor que 1 SM</label>
                            <input id="1" type="checkbox" value="until-1" name="renda" class="cb"  ><br>
                            <label for="">Entre 1 e 3,5 SM</label>
                            <input id="2" type="checkbox" value="from-1-2_5" name="renda" class=""  ><br>
                            <label for="">Acima de 3 SM</label>
                            <input id="3" type="checkbox" value="up-3_5" name="renda" class="" ><br>
                        </div>
                        <div class="right">
                            <h3>Escolaridade</h3>
                            <label for="">Fundamental</label>
                            <input id="1" type="checkbox" value="fundamental" name="escolaridade" class=""  ><br>
                            <label for="">Medio</label>
                            <input id="2" type="checkbox" value="medio" name="escolaridade" class=""  ><br>
                            <label for="">Superiori</label>
                            <input id="3" type="checkbox" value="seperior" name="escolaridade" class="" ><br>
                            <label for="">Pos-graduação</label>
                            <input id="3" type="checkbox" value="pos-graduacao" name="escolaridade" class="" ><br>
                        </div>
                    </div>
                    <hr>
                </form>
                <div id="map-canvas" style="display: block; opacity: 1; position: relative; 
                     z-index: 10001; width: 107.3%;margin-left: -3.7%; height: 319px;
                     border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;" >


                </div>

            </article>
        <script async defer src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAeoE-otECfZjW9k5ExYcj0UWS6V2MUu1g&callback=initialize"></script>
    </body>
</html>
