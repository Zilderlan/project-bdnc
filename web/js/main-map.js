var map;
var marker;
var lat_center;
var lng_center;

function getLocation()
  {
  if (navigator.geolocation)
    {
    navigator.geolocation.getCurrentPosition(showPosition);
    }
  else{x.innerHTML="O seu navegador não suporta Geolocalização.";}
  }
function showPosition(position)
  {
  	lat_center = position.coords.latitude.toFixed(6);
  	lng_center = position.coords.longitude.toFixed(6);
  	getCoords(lat_center, lng_center);
  	createMarker(lat_center, lng_center);
  	
  //x.innerHTML="Latitude: " + position.coords.latitude +
  //"<br>Longitude: " + position.coords.longitude; 
  }


function initialize(){
	
	
	var options = {
		// center: {lat: -6.922643, lng: -38.6781601},
		center: new google.maps.LatLng(-6.922643, -38.668701),
		zoom: 14,
		mapTypeId: 'roadmap'
	};


	map = new google.maps.Map(document.getElementById('map-canvas'), options);
google.maps.event.addDomListener(window, 'load', initialize);

	google.maps.event.addListener(map, "click", function(event){
		var lat = event.latLng.lat().toFixed(6);
		var lng = event.latLng.lng().toFixed(6);

		createMarker(lat, lng);

		getCoords(lat, lng);
	});
}

google.maps.event.addDomListener(window, "load", initialize);


function createMarker(lat, lng){
	if (marker){
		marker.setMap(null);
		marker = "";
	}

			marker = new google.maps.Marker({
			position: new google.maps.LatLng(lat, lng),
			draggable: true,
			map: map
		});

   // Evento que detecta o arrastar do marcador para
   // redefinir as coordenadas lat e lng e
   // actualiza os valores das caixas de texto no topo da página
   google.maps.event.addListener(marker, 'dragend', function() {
      
      // Actualiza as coordenadas de posição do marcador no mapa
      marker.position = marker.getPosition();

      // Redefine as variáveis lat e lng para actualizar
      // os valores das caixas de texto no topo
      var lat = marker.position.lat().toFixed(6);
      var lng = marker.position.lng().toFixed(6);

      // Chamada da função que actualiza os valores das caixas de texto
      getCoords(lat, lng);

   });
}

// Função que actualiza as caixas de texto no topo da página
function getCoords(lat, lng) {

   // Referência ao elemento HTML (input) com o id 'lat'
   var coords_lat = document.getElementById('lat');
   // alert('lat_init'+coords_lat.value);

   // Actualiza o valor do input 'lat'
   coords_lat.value = lat;

   // Referência ao elemento HTML (input) com o id 'lng'
   var coords_lng = document.getElementById('lng');

   // Actualiza o valor do input 'lng'
   coords_lng.value = lng;
}

initialize();