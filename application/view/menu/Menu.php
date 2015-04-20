<style>
  #body{
    display: none;
  }
</style>
<div id="selectRol">
  <select id="ddlRol">
    <?php 
      foreach ($roles as $item) {
              echo "<option value='$item->id_rol'>$item->Nombre</option>";
          }
     ?>
  </select><br>
  <input  type="button" onclick="getmenu();" class="btn btn-primary" value="Aceptar"/>
  <script>
  function getmenu () {
    $.ajax({
        type: "POST",
        url: url+"/menu/getmenu",
        data: { "id": document.getElementById('ddlRol').value}
    })
    .done(function(result) {
            document.getElementById('menumenu').innerHTML = result + document.getElementById('menumenu').innerHTML;
            $('#selectRol').hide(100);
            $('#body').show(500);
        })
    .fail(function() {
            // this will be executed if the ajax-call had failed
        })
    .always(function() {
            // this will ALWAYS be executed, regardless if the ajax-call was success or not
        });
  }
  </script>
</div>

<div id="body">
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
    <ul id="menumenu" class="nav navbar-nav">

          <li><a href="javascript:location.href='<?php URL; ?>/mini-sies/Login'">Cerrar sesión</a></li>
      </ul>
  </div>
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
</div>