<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" href="//code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
            <link rel="stylesheet" href="public/css/papier.css" />
            <link rel="stylesheet" href="public/css/estilo.css" />
            <link rel="stylesheet" href="public/css/footer.css" />
            <script src="public/js/jquery.min.js"></script>
           
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
          
            <div class="menu">
                <div class="brand">{{page_title}}</div>
                <ul>
                   

                    {{foreach appmenu}}
                      <li><a href="index.php?page={{mdlprg}}">{{mdldsc}}</a></li>
                    {{endfor appmenu}}

                    {{if cartEntries}}
                    <li><a href="index.php?page=cartauth"><span class="ion-ios-cart"></span> <span id="cartcounter">{{cartEntries}}</span></a></li>
                    {{endif cartEntries}}
                    
                    <li><a href="index.php?page=logout">Cerrar Sesión</a></li>
                </ul>
                <div class="hbtn"> <div>&nbsp;</div><div>&nbsp;</div><div>&nbsp;</div></div>
            </div>
            <div class="contenido">
                {{{page_content}}}
            </div>

            <footer>
      <div class="main-content">
        <div class="box">
          <h2>Sobre nosotros</h2>
<div class="content">
            <p>
                ¡Mayor Variedad, Mejor Servicio, Precios Insuperables! ¡Vea la Diferencia! Lentes CinMer esta completamente dedicado a ofrecerle a nuestros clientes la más amplia gama de lentes de sol, lentes de prescripción, lentes de contacto y productos ópticos a los mejores precios.</p>              
</div>
</div>

<div class="box">
          <h2>Dirección</h2>
<div class="content">
            
              <span class="fas fa-map-marker-alt"></span>
              <span class="text">Ave. José Martí entre Blvd. Morazán y final de Av. Los Próceres</span>
            

</div>
</div>
<div class="box">
          <h2>Contacta con nosotros</h2>
<div class="content">
        <span class="fas fa-phone-alt"></span>
        <span class="text">Mercy Alejandra Reconco (504)-33469354</span>
        
      
<div class="email">
       
        <span class="text">luiscerrato9@gmail.com</span>
      </div>
    </div>

</div>
</div>
        <div class="container-footer">
          <div class="footer">
               <div class="copyright">
                   <p>© Derechos Reservados 2020</p>
               </div>
           </div>
      
       </div>

  	</footer> 
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
            <script>
              $().ready(function(e){
                $(".hbtn").click(function(e){
                  e.preventDefault();
                  e.stopPropagation();
                  $(".menu").toggleClass('open');
                  });
              });
            </script>
        </body>
    </html>
