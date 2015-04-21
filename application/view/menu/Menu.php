<div class="navbar navbar-default">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="javascript:void(0)">SIES<div class="ripple-wrapper"></div></a>
  </div>
  <div class="navbar-collapse collapse navbar-responsive-collapse">
    <ul class="nav navbar-nav">
      <?php 
      	echo $menu;
       ?>
          <li><a href="javascript:location.href='<?php URL; ?>/mini-sies/Login'">Cerrar sesión</a></li>
      </ul>
  </div>
</div>
<div id="complete-dialog" class="modal fade" tabindex="-1" style="display: none;" aria-hidden="true">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 class="modal-title">Crear una nueva Escritura</h4>
    </div>
    <div class="modal-body">
    <form method="POST" action="<?php URL ?>/mini-sies/Menu/crearEscritura">
    	<table>
    		<tr>
    			<td>
    				<p>Selecione un cliente</p>
                      <select name="dllCliente" id="">
							<?php 
								foreach ($cliente as $item) {
						            echo "<option value='$item->CC'>$item->Nombre</option>";
						        }
							 ?>
						</select>
    			</td>
    			<td>
    				<p>Selecione una plantilla</p>
                      <select name="dllPlantilla" id="">
							<?php 
								foreach ($plantilla as $item) {
						            echo "<option value='$item->IdPlantilla'>$item->Nombre</option>";
						        }
							 ?>
						</select>
    			</td>
    		</tr>
    	</table>
    </div>
    <div class="modal-footer">
      <input name="btnCrear" type="button" onclick="this.form.submit();" class="btn btn-primary" data-dismiss="modal" value="Continuar"/>
    </form>
    </div>
  </div>
</div>
</div>
<div id="paragrafo-dialog" class="modal fade" tabindex="-1" style="display: none;" aria-hidden="true">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 class="modal-title">Agregar un nuevo parágrafo</h4>
    </div>
    <div class="modal-body">
    	<iframe src="<?php echo URL; ?>paragrafo" frameborder="0" scrolling="no" height="200" width="550"></iframe>
    </div>
    <div class="modal-footer">
		<br>
    </div>
  </div>
</div>
</div>
<div id="legislacion-dialog" class="modal fade" tabindex="-1" style="display: none;" aria-hidden="true">
<div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      <h4 class="modal-title">Agregar una nueva legislación</h4>
    </div>
    <div class="modal-body">
    	<iframe src="<?php echo URL; ?>legislacion" frameborder="0" scrolling="no" height="200" width="550"></iframe>
    </div>
    <div class="modal-footer">
		<br>
    </div>
  </div>
</div>
</div>