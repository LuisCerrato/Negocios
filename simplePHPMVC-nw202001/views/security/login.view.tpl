<div class="heropanel">
<section class="row">

  <form id="formLogin" action="index.php?page=login" method="POST" class="col-md-6 col-offset-3 card">
    <h1>Inicio de Sesión</h1>
    <input name="returnto" value="{{returnto}}" type="hidden" />
    <input name="tocken" value="{{tocken}}" type="hidden"/>

    <div class="inputs">
     <div class="row">
    <div class="input">
      <input placeholder="email" type="text" name="txtEmail" id="txtEmail" value="{{txtEmail}}"
      placeholer="Correo Electrónico"/>
    </div>
    </div>
      <div class="row">
    <div class="input">
      <input placeholder="Contraseña" type="password" name="txtPswd" id="txtPswd" value=""
      placeholer="Contraseña"/>
    </div><br/>
 </div>
 </div>

    <div class="row">
      <button class="col-md-12 btn-primary" id="btnSend"><span class="ion-log-in"></span>&nbsp;Iniciar Sesión</button>
    </div>

    {{if showerrors}}
        <div class="alert alert-danger">
          <ul style="margin-bottom:1em !important;">
            {{foreach errors}}
              <li>
                {{this}}
              </li>
            {{endfor errors}}
          </ul>
        </div>
    {{endif showerrors}}
  </form>
  </div>
</section>
<script>
  $().ready(
    function(){
      $("#btnSend").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#formLogin").submit();
        });
    }
    );
</script>
