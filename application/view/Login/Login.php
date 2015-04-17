<style>
	.center {
		 padding: 10px;
	     float: left;
	     margin-left: auto;
	     margin-right: auto;
	     width: 100%;
	}
	td{
		padding: 10px;
	}
	.td{
		width: 400px;
	}
</style>
<div  class="span7 center" align="center">
	<form action="<?php URL; ?>Login/Login" method="POST">
		<table>
		<tr>
			<td><label for="">Documento de identidad</label></td>
			<td class="td"><input maxlength="20" type="number" pattern="[0-9]" class="form-control form-control-success" name="user" placeholder="Documento de identidad" title="Ingresa un documento correcto" required ></td>
		</tr>
		<tr>
			<td><label for="">Contraseña</label></td>
			<td class="td"><input maxlength="20" type="password" name="pass" class="form-control form-control-success" name="user" placeholder="Contraseña" title="Ingresa tu contraseña" required></td>
		</tr>
		</table>		
			<?php
				if(isset($_GET["alter"]))
				{
					echo '<label class="btn btn-material-red">';
					switch ($_GET["alter"]) {
						case '1':
							echo "¡Inicio de sesión incorrecto!";
							break;						
						case '2':
							echo '¡Este correo no se encuentra registrado!';
							break;
						case '3':
							echo 'Revisa tu correo eletrónico';
							break;
						case '4':
							echo 'Tu sesión a caducado';
							break;
					}
					echo '</label><br>';
				}
			?>
		<a data-toggle="modal" data-target="#complete-dialog" class="btn btn-material-grey-500">Restablecer contraseña</a><button class="btn btn-primary">Entrar</button>
	</form>
</div>
<div id="complete-dialog" class="modal fade" tabindex="-1" style="display: none;" aria-hidden="true">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 class="modal-title">Restablecer contraseña</h4>
    </div>
    <div class="modal-body">
    <form method="POST" action="<?php echo URL; ?>Login/SendMail">
    	<br>
    	<input type="text" name="correo" required class="form-control form-control-success" placeholder="Correo Eletrónico">
    </div>
    <div class="modal-footer">
      <input name="btnCrear" type="button" onclick="this.form.submit();" class="btn btn-primary" value="Continuar"/>
    </form>
    </div>
  </div>
</div>
</div>