<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/menuStyle_1.css">
	<link rel="stylesheet" href="style.css">
	<script src=""></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js" ></script>
	<script defer src="js/main.js" type="text/javascript"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/ajax.js"></script>
</head>
<body onload="sizeOfThings()">

	<header>
		<input type="checkbox" id="btn-menu" >
		<label for="btn-menu" class="icon-menu"></label>
		<nav class="menu">
			<ul>
				<li><a href="#"><span class="icon-home left"></span>Home<span class=" right"></span></a></li>
				<li class="submenu"><a href="#dialog" name="modal"><span class="icon-users left"></span>Cadastro</span></a>
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


		<section>
			<article id="dialog" class="window">
				<!-- Essa div será nossa janela modal-->
				<h1>cadastro de usuario <span class="close icon-cross"></span></h1>
				<form action="" method="" class="form record">

					<h2>Informações básicas:</h2>
						<div class="inf-basic sex">
							<label for="" form="opt-sex" id="opt-sex">Sexo:</label>
							<select type="selected" id="opt-sex" class="">
								<option value="select" selected>Selecione</option>
								<option value="M">Masculino</option>
								<option value="F">Feminino</option>
								<option value="O">Outros</option>
							</select>
						</div>
						<div class="inf-basic age">
							<label for="opt-age" id="opt-age">Idade:</label>
							<select type="selected" id="opt-age" class="">
								<option value="select" selected>Selecione</option>
								<option value="age-12-18">Entre 12 e 18</option>
								<option value="age-19-25">Entre 19 e 25</option>
								<option value="age-up-25"  >Acima de 25</option>
							</select>
						</div>
						<div class="inf-basic rent">
							<label for="" form="opt-rent" id="opt-rent">Renda:</label>
							<select type="selected" id="opt-rent" class="">
								<option value="select" selected>Selecione</option>
								<option value="until-1">Até 1 SM</option>
								<option value="from-1-2_5">Entre 1 e 2 SM</option>
								<option value="">Entre 2 e 3,5 SM</option>
								<option value="up-3_5">Acima de 3,5 SM</option>
							</select>
						</div>
						<div class="inf-basic escolaridade">
						<label for="opt-escolaridade" id="opt-">Escolaridade:</label>
							<select type="selected" id="opt-" class="">
								<option value="select">Selecione</option>
								<option value=""></option>
								<option value=""></option>
								<option value=""></option>
							</select>
						</div>															
					<div class="inf-basic latLng">
						<label>Localização:</label> 
						<div>
							<input type="text" class="latLng-left" id="" name="text-" placeholder="Latitude">
							<input type="text" class="latLng-right" id="" name="text-" placeholder="Longitude">
							
							<input type="text" class="btn-address cpm" id="" name="text-" placeholder="Address">
							<input type="button" id="" name="btn-map" class="btn-map" value="Mapa">
							
						</div>
					</div>
					<h2> Informações de Acesso</h2>

					
					<div>
						<label for="txt-email" class="" id="">Login:</label>
						<input type="text" class="txt-email" id="txt-email" placeholder="Login">
					</div>
					<div>
						<label for="txt-password" class="" id="">Password:</label>
						<input type="text" class="txt-password" id="txt-password" placeholder="Password">
					</div>


					<div >
						<button class="" id="" type="reset"><span class="icon-cross"></span>Cancelar</button>
						<button class="" id="add-right" type="submit"><span class="icon-checkmark"></span>Cadastrar</button>
					</div>

						
				</form>
				
				<!--mascara para cobrir o site-->
				
			</article>

			<article id="window-login" class="window">
				<h1>Login: <span class="close icon-cross"></span></h1>
				<form action="" id="" class="record ">
				<div>
					<label for="txt-email" class="" id="">Login:</label>
					<input type="text" class="" id="txt-email" placeholder="Login">
				</div>
				<div>
					<label for="txt-password" class="" id="">Password</label>
					<input type="text" class="" id="txt-password" placeholder="Password">
				</div>
				<div>
					<button type="button" id="" class="close" value=""><span class="icon-cross"></span>Cancelar</button>
					<button type="" id="" class="" value=""><span class="icon-checkmark"></span>Login</button>
				</div>
				</form>
			</article>

			<article id="window-search" class="window">
				<h1>Nome da enquete<span class="close icon-cross"></span></h1>

				<h2>SIM: <span>%</span></h2>
				<h2>NÃO: <span>%</span></h2>
				<h2>NÃO SEI: <span>%</span></h2>
				<hr>
				<h2>Filtros</h2>


				
				<form action="" id="" class="mais-filtros">
				<div class="left">
					<h3>Respostas</h3>
					<label for="">Sim</label>
					<input id="cb1" type="checkbox" value="sim" name="resp" class="cb"  onclick="SetSel(this);"><br>
					<label for="">Não</label>
					<input id="cb2" type="checkbox" value="nao" name="resp" class="cb"  onclick="SetSel(this);"><br>
					<label for="">Não sei</label>
					<input id="cb3" type="checkbox" value="indeciso" name="resp" class="cb" onclick="SetSel(this);"><br>
				</div>
<script type="text/javascript">

    function SetSel(elem)
{
  var elems = document.getElementsByClassName("cb");
  var currentState = elem.checked;
  var elemsLength = elems.length;
  
  for(i=0; i<elemsLength; i++)
  {
    if(elems[i].type === "checkbox")
    {
       elems[i].checked = false;   
    }
  }
  
  elem.checked = currentState;
}

</script>
				<div class="left">
					<h3>Respostas</h3>
					<label for="">Sim</label>
					<input id="cb4" type="checkbox" value="sim" name="resp" class="cb"  onclick="SetSel(this);"><br>
					<label for="">Não</label>
					<input id="cb5" type="checkbox" value="nao" name="resp" class="cb"  onclick="SetSel(this);"><br>
					<label for="">Não sei</label>
					<input id="cb6" type="checkbox" value="indeciso" name="resp" class="cb" onclick="SetSel(this);"><br>
				</div>

				<div>
					<button type="button" onclick="document.getElementById('mais-filtros').style.display='block';">Mais filtros</button>
				</div>

				<div id="mais-filtros">
				<div class="left">
					<h3>Idade</h3>
					<label for="">Sim</label>
					<input id="1" type="checkbox" value="sim" name="resp" class="cb"  onclick="SetSel(this);"><br>
					<label for="">Não</label>
					<input id="2" type="checkbox" value="nao" name="resp" class=""  onclick="SetSel(this);"><br>
					<label for="">Não sei</label>
					<input id="3" type="checkbox" value="indeciso" name="resp" class="" onclick="SetSel(this);"><br>
				</div>
				<div class="right">
					<h3>Renda</h3>
					<label for="">Sim</label>
					<input id="1" type="checkbox" value="sim" name="resp" class=""  onclick="SetSel(this);"><br>
					<label for="">Não</label>
					<input id="2" type="checkbox" value="nao" name="resp" class=""  onclick="SetSel(this);"><br>
					<label for="">Não sei</label>
					<input id="3" type="checkbox" value="indeciso" name="resp" class="" onclick="SetSel(this);"><br>
				</div>
				</div>
				<hr>
				</form>
				
				<div id="map"></div>
			</article>

			<article id="window-crate" class="window">
				<h1>Nova Enquete<span class="close icon-cross"></span></h1>
				<form action="" id="" class="record ">
				<div>
					<label for="txt-email" class="" id="">Login:</label>
					<input type="text" class="" id="txt-email" placeholder="Digite aque sua enquete">
				</div>

				<div>
					<button type="" id="" class="" value=""><span class="icon-cross"></span>Cancelar</button>
					<button type="" id="" class="" value=""><span class="icon-checkmark"></span>Login</button>
				</div>
				</form>
			</article>

			<article>
				<div id="mask"></div>
			</article>
		</section>
		<section></section>

	
	
</body>
</html>