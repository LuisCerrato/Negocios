<div class="heropanel">
<main class="row">
  <br/>
  <div class="tabs">
  <form id="formRegister" action="index.php?page=register" method="post" class="col-8 col-offset-2">
    {{if hasErrors}}
        <div class="alert alert-danger">
          <ul>
          {{foreach errors}}
              <li>{{this}}</li>
          {{endfor errors}}
          </ul>
        </div>
    {{endif hasErrors}}
    <input type="hidden" name="token" value="{{token}}" />    
<div class="inputs">
  <h1>Crear nueva cuenta</h1>
		<div class="input">
      <input placeholder="email" type="email" name="userEmail" id="userEmail" value="{{userEmail}}"
        placeholer="Correo Electrónico"/>
        
        
    </div>
    <span id="userEmailError"></span>

    <div class="input">
    
      <input placeholder="Contraseña" type="password" id="password" name="password" value="{{password}}"
        placeholer="Contraseña"/>
           
       
    </div>
    <span id="passwordError"></span>
    <div class="input">
       <input placeholder="Confirmar contraseña" type="password" id="passwordCnf" name="passwordCnf" value="{{passwordCnf}}"
        placeholer="Contraseña"
       />
    
       </div>
       <span id="passwordCnfError"></span>
	 </div>
    <span>Mínimo 8 caracteres, un número, una mayúscula y un simbolo especial</span>
     <button class="col-md-12 btn-primary" id="btnNuevaCuenta" >&nbsp;Nueva Cuenta</button>
           
       
   
      
      
  </div> 
</form>
</div>
  <script>
    $().ready(function(){
      $("#btnNuevaCuenta").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          /* Validaciones */
          email = $("#userEmail").val();
          $("#userEmailError").html('').removeClass('error col-8 col-offset-4');
          password = $("#password").val();
          $("#passwordError").html('').removeClass('error col-8 col-offset-4');
          passwordCnf = $("#passwordCnf").val();
          $("#passwordCnfError").html('').removeClass('error col-8 col-offset-4');
          errors = false;
          if (!isEmailOk(email)) {
            errors = true;
            $("#userEmailError").html('Correo en formato incorrecto.').addClass('error col-sm-offset-2');
          };
          if (!isNotEmpty(email)) {
            $("#userEmailError").html('Correo en formato incorrecto.').addClass('error col-sm-offset-2');
            errors = true;
          };
          if (!isPasswordOk(password)) {
            $("#passwordError").html('Contraseña en formato incorrecto.').addClass('error col-sm-offset-2');
            errors = true;
          };
          if (password!==passwordCnf && isNotEmpty(password)) {
            $("#passwordCnfError").html('Contraseñas no coinciden.').addClass('error col-sm-offset-4');
            errors = true;
          };
          if (!errors){
            $("#formRegister").submit();
          } else {
            alert('Tiene errores revise e intente de nuevo.')
          }
      });
    });
  </script>
</main>
