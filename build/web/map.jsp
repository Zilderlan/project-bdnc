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
            <article id="dialog" class="window">
                <form action="userservlet.do" method="post" class="form record">
                    <h2>Informações básicas:</h2>
                    <div class="inf-basic sex">
                        <label for="" form="opt-sex" id="opt-sex">Sexo:</label>
                        <select type="selected" id="opt-sex" class="" name="sexo">
                            <option value="select" selected>Selecione</option>
                            <option value="M">Masculino</option>
                            <option value="F">Feminino</option>
                            <option value="O">Outros</option>
                        </select>
                    </div>

                    <div class="inf-basic age">
                        <label for="opt-age" id="opt-age">Idade:</label>
                        <select type="selected" id="opt-age" class="" name="age">
                            <option value="select" selected>Selecione</option>
                            <option value="age-12-18">Entre 12 e 18</option>
                            <option value="age-19-25">Entre 19 e 25</option>
                            <option value="age-up-25"  >Acima de 25</option>
                        </select>
                    </div>

                    <div class="inf-basic rent">
                        <label for="" form="opt-rent" id="opt-rent">Renda:</label>
                        <select type="selected" id="opt-rent" class="" name="rent">
                            <option value="select" selected>Selecione</option>
                            <option value="until-1">Até 1 SM</option>
                            <option value="from-1-2_5">Entre 1 e 2 SM</option>
                            <option value="">Entre 2 e 3,5 SM</option>
                            <option value="up-3_5">Acima de 3,5 SM</option>
                        </select>
                    </div>

                    <div class="inf-basic escolaridade">
                        <label for="opt-escolaridade" id="opt-">Escolaridade:</label>
                        <select type="selected" id="opt-" class="" name="scooling">
                            <option value="select">Selecione</option>
                            <option value="fundamental">Fundamental</option>
                            <option value="medio">Médio</option>
                            <option value="superior">Superior</option>
                            <option value="pos-graduacao">Pós-Graduação</option>
                        </select>
                    </div>

                    <div class="inf-basic latLng">
                        <label>Localização:</label> 
                        <div class="coordenadas">
                            <input type="text" class="latLng-left" id="lat" name="text-lat" placeholder="Latitude">
                            <input type="text" class="latLng-right" id="lng" name="text-long" placeholder="Longitude">

                            <input type="text" class="btn-address cpm" id="" name="text-" placeholder="Address">

                            <input type="button" id="" name="btn-map" class="btn-map" value="Mapa" 
                                   onclick="document.getElementById('dialog').style.display = 'none'; document.getElementById('map-canvas').style.opacity = '1'; 
                                       document.getElementById('btn-map').style.display='block';
                                       getLocation()">
                        </div>
                    </div>


                    <h2> Informações de Acesso</h2>


                    <div>
                        <label for="txt-email" class="" id="">Email</label>
                        <input type="text" class="txt-email" id="txt-email" placeholder="Login" name="email">
                    </div>
                    <div>
                        <label for="txt-password" class="" id="">Senha</label>
                        <input type="password" class="txt-password" id="txt-password" placeholder="Password" name="password">
                    </div>


                    <div >
                        <button class="" id="" type="reset"><span class="icon-cross"></span>Cancelar</button>
                        <button class="" id="add-right" type="submit"><span class="icon-checkmark"></span>Cadastrar</button>
                    </div>



                </form>

            </article>

            <article>
                <!--<div id="mask"></div>-->
            </article>
            <article>
                
            </article>
            <div id="map-canvas" style="float: left; position: absolute; width: 100%; height: 100%; opacity: 0;">
            </div>
            <button id="btn-map" class=""  type="buuton" onclick="document.getElementById('btn-map').style.display='none';
                    document.getElementById('map-canvas').style.opacity='0';
                        document.getElementById('dialog').style.display='block';">Continuar</button>

        </section>
        <script async defer src="http://maps.googleapis.com/maps/api/js?key=AIzaSyAeoE-otECfZjW9k5ExYcj0UWS6V2MUu1g&callback=initialize"></script>
    </body>
</html>