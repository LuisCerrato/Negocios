

<div class="sliderLens">
            <section class="sliderTrack">
                <div class="center middle sliderItem">
                 
                    <img src="public/imgs/img1.jpg">
                </div><div class="center top sliderItem">
                    
                    <img data-src="public/imgs/img2.jpg">
                </div><div class="center top sliderItem">
                    <img data-src="public/imgs/img3.jpg">
                </div><div class="center top sliderItem">
                    <img data-src="public/imgs/img4.jpg">
                </div>
            </section>
</div>


 <section class="about-us">
        <div class="contenedor1">
            <h2 class="titulo">Le ofrecemos:</h2>
            <div class="contenedor-articulo">
                <div class="articulo" data-aos="zoom-in-right">
                    <i class="fas fa-glasses"></i>
                    <h3> Óptica </h3>
                    <p>Ponemos a su disposición la más alta tecnología en lentes garantizada por nuestro
                       laoratorio óptico digital y una gran variedad de aros de diferentes marcas y estilos.</p>
                   
                </div>
                <div class="articulo" data-aos="zoom-in-right">
                    <i class="fas fa-clipboard-list"></i>
                    <h3>Clinica</h3>
                    <p>Diagnósticos confiables, tratamientos acertados, así como modernos procedimientos para
                       la prevención y rehabilitación de enfermedades oculares a la altura de las mejores 
                       clínicas.</p>
                    
                </div>
                <div class="articulo" data-aos="zoom-in-right">
                    <i class="fas fa-users"></i>
                    <h3>Personal</h3>
                    <p>Contamos con un amplio espectro de profesionales altamente capacitados garantizando
                        así al cliente un servicio de calidad.</p>
                </div>
            </div>

           
            
    </section>
    <header>
  <h1>Bienvenido {{userScreenName}}</h1>
</header>


 <h2 class="titulo">Productos:</h2>

<section class="cards row" >
  {{foreach productos}}
  <section class="col-12 col-sm-6 col-md-3 m-padding "data-aos="zoom-in-right" >
    <div class="card col-12 depth-2 m-padding">
      <span class="col-sm-12 center depth-1">
        {{if urlthbprd}}
        <img src="{{urlthbprd}}" alt="{{skuprd}} {{dscprd}}" class="imgthumb center" />
        {{endif urlthbprd}}
      </span>
      <span class="col-12 center depth-1 m-padding card-desc">
        <span class="card-side">{{skuprd}}</span>
        <span class="col-12">{{dscprd}}</span>
      </span>
      <span class="col-12 center depth-1 m-padding">
        <span class="col-6 m-padding">Disponibles</span>
        <span class="col-6 right m-padding">{{stkprd}}</span>
        <span class="col-12 bold center m-padding">
          <a href="index.php?page=addtocart&codprd={{codprd}}" class="l-padding btn btn-primary col-12 sendToCart">
            L {{prcprd}} <span class="ion-plus-circled"></span>
          </a>
        </span>
      </span>
    </div>
  </section>
  {{endfor productos}}
</section>


<script>
  $().ready(function () {
    $(".sendToCart").click(function (e) {
      e.preventDefault();
      e.stopPropagation();
      $.post(
        $(this).attr("href"),
        function( data, success, xqXML ) {
          console.log(data);
          if (data.cartAmount && data.cartAmount > 0) {
            window.location.reload();
          }
        }
      );
    });
  });
</script>
<style>
  .card {
    position: relative;
  }

  .card-desc {
    height: 4em;
    overflow: scroll;
  }

  .card-side {
    position: absolute;
    top: 6em;
    left: 1em;
    transform-origin: left top;
    transform: rotate(-90deg);
  }
</style>


<link rel="stylesheet" href="public/css/home.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700&display=swap" rel="stylesheet">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="public/js/slider.js"></script>
<link rel="stylesheet" href="public/css/estilos2.css" />
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script src="https://kit.fontawesome.com/c15b744a04.js" crossorigin="anonymous"></script>
<script src="public/js/main2.js"></script>
<script src="js/main.js"></script>
