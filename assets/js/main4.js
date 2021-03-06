const btnPolitica = document.querySelector('politica');
const btnPoliticaEconomia = document.querySelector('economia');
const btnDeportes = document.querySelector('deportes');
const btnSalud = document.querySelector('salud');
const btnMundo = document.querySelector('mundo');
const btnMarketing = document.querySelector('marketing');




$(document).ready(function(){
  consultaNoticias();
  /*setTimeout(() => {
    $("#modalNoticias").modal("show");
  }, 1000);*/

function consultaNoticias(){
  $.ajax({
    async: true,
    type: "POST",
    url: "includes/functions/query.php",
    data: {
      flag: 1
    },
    dataType: 'json',
    //beforeSend: function (){},
    error: function (request, status, error){
        alert(request.responseText);
    },
    success: function (respuesta){
        switch(respuesta.estado){
            case 1:

                mostrarNoticias(respuesta.data['datos']);
            break;
            case 2:
              console.log("error")
                alert(error.mensaje)
            break;
        }


    },

  });
}

function consultaNoticia(id){
  $.ajax({
    async: true,
    type: "POST",
    url: "includes/functions/query.php",
    data: {
      flag: 2,
      id: id
    },
    dataType: 'json',
    //beforeSend: function (){},
    error: function (request, status, error){
        alert(request.responseText);
    },
    success: function (respuesta){
        switch(respuesta.estado){
            case 1:

                mostrarNoticia(respuesta.data['datos']);
            break;
            case 2:
              console.log("error")
                alert(error.mensaje)
            break;
        }


    },

  });
}

function mostrarNoticias(datos){
  //console.log(datos)
  const contenedroSlider = document.querySelector('#slider');
  const contenedorTendencias = document.querySelector('#tendencias');
  const slider = document.createElement('div');
  const tendencia = document.createElement('div');
  tendencia.classList.add('row', 'justify-content-center');
  slider.classList.add('swiper-wrapper');
  var icon = '';
  for(var i=0; i<datos.length;i++){
    const {nombre, texto, categoria, fecha, imagen, tipo, extracto, id} = datos[i];
    icon = obtenerIcon(categoria);
    if(tipo === 'Noticia'){
      slider.innerHTML += `
      <div class="swiper-slide">
        <img src="${imagen}" alt="" class="dest">
        <div class="row p-2">
            <div class="col-12 col-lg-2 offset-0 offset-lg-1 text-center icon"><img src="assets/img/icons/${icon}" alt="" class="img-fluid"></div>
            <div class="col-12 col-lg-8 mx-3 altura">
                <h4 class="fw-bold">${nombre}</h4>
                <p>${extracto}</p>
            </div>
            <div class="text-end mb-4">
              <a class="btn btn-success ver-nota" id="${id}">Ver M??s</a>
            </div>
        </div>
      </div>`;
    }
    if(tipo === 'Tendencia'){
      tendencia.innerHTML += `
        <div class="col-12 col-lg-3">
          <div class="shadow-img text-center py-2">
              <img src="${imagen}" alt="" class="img-tendencias">
          </div>
          <div class="description text-center">
              <h4 class="f-p">Tendencias</h4>
              <p class="fw-bold  f-s">${nombre}</p>
              <p class="text-center">${texto}</p>

          </div>
        </div>
      `
    }

  }
  tendencia.innerHTML += `
    <div class="col-12 col-lg-3">
    <div class="shadow-img text-center py-2">
        <img src="assets/img/guitarra.jpg" alt="" class="img-tendencias">
    </div>
    <div class="description text-center">
        <h4 class="f-p">Tendencias</h4>
        <p class="fw-bold f-s">PLAYLIST ACOBIG</p>
        <p class="text-center"><iframe style="border-radius:12px" src="https://open.spotify.com/embed/playlist/0AX1AxQsevv0oZkXbv8SYm?utm_source=generator&theme=0" width="100%" height="80" frameBorder="0" allowfullscreen="" allow="autoplay; clipboard-write; encrypted-media; fullscreen; picture-in-picture"></iframe></p>
    </div>
</div>
    `;
  contenedroSlider.appendChild(slider);
  contenedorTendencias.appendChild(tendencia);
  var swiper = new Swiper(".mySwiper", {
    speed: 400,
    slidesPerView: 1,
    spaceBetween: 0,
    loop: true,
    breakpoints: {
      // when window width is >= 640px
      768: {
        slidesPerView: 2,
        spaceBetween: 0
      }

    },
    freeMode: true,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  });

  activarBotones();
}

function activarBotones(){
  const verNota = document.querySelectorAll('.ver-nota');
verNota.forEach( boton =>{
  boton.addEventListener('click', seleccion)

});
}

function seleccion(e){
  e.preventDefault();

  console.log(e.target.id);
  consultaNoticia(e.target.id);
}

function mostrarNoticia(datos){
  console.log($("#exampleModalLabel"));
  const modal =  document.querySelector('#exampleModal');
  modal.innerHTML = `
  <div class="modal-dialog modal-lg">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">${datos[0].nombre}</h5>
    </div>
    <div class="modal-body">
      <div class="text-center mb-3">
        <img src="${datos[0].imagen}" alt="${datos[0].nombre}" class="img-fluid w-50 ">
        <img src="assets/img/icons/${obtenerIcon(datos[0].categoria)}" alt="${datos[0].categoria}" class="img-fluid icon-sup">
      </div>
      ${datos[0].texto}
    </div>
    <div class="modal-footer">
      <button type="button" class="btn btn-success" data-bs-dismiss="modal">Cerrar</button>
    </div>
  </div>
</div>
  `
  $("#exampleModal").modal("show");
}

function obtenerIcon(cat){
  var icon = ''
  switch (cat) {
    case 'Politica':
      icon = 'politica_icon.png';
      break;
    case 'Deportes':
      icon = 'deportes_icon.png';
    break;
    case 'Economia':
      icon = 'economia_icon.png';
    break;
    case 'Salud':
      icon = 'salud_icon.png';
    break;
    case 'Mundo':
      icon = 'mundo_icon.png';
    break;
    case 'Marketing':
      icon = 'marketing_icon.png';
    break;
  }
  return icon;
}
});
