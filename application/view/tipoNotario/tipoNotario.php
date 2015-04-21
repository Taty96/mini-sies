
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


<script >

window.onload = function () {
document.formularioinfo.TxtNombreTipoNotario.focus();
document.formularioinfo.addEventListener('submit', validarFormulario);
}
 
function validarFormulario() {

var todoCorrecto = true;
var formulario = document.formularioinfo;
for (var i=0; i<formulario.length; i++) {
                if(formulario[i].type =='text') {
                               if (formulario[i].value == null || formulario[i].value.length == 0 || /^\s*$/.test(formulario[i].value)){
                               alertify.alert(formulario[i].name+ ' <h4>No puede estar vacío o contener sólo espacios en blanco</h4>');
                               todoCorrecto=false;
                               }
                }
                }
return todoCorrecto;
}
</script>


<form name="formularioinfo"> 
  <div class="span7 center" align="center" >
	<table>
	<tr>
		<td><label for="">Codigo Tipo Notario</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtCodigoTN"placeholder="Nombre del tipo de notario" required></td>

	</tr>
	<tr>
		<td><label for="">Nombre del tipo de notario</label></td>
		<td class="td"><input type="text" class="form-control"  maxlength="10" onkeyup="return ismaxlengt(this)" id="TxtNombreTipoNotario"placeholder="Nombre del tipo de notario" required></td>
	</tr>
	<tr>
		<td><label for="">Estado Tipo Notario</label></td>
		<td class="td"><input type="text" class="form-control" maxlength="2" onkeyup="return ismaxlengt(this)" id="TxtEstadoTipoNotario" placeholder="Nombre del tipo de notario" required></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_TipoNotario"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_TipoN" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>
</form>>

<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Codigo Tipo Notario</th>
				<th>Tipo Notario</th>
				<th>Estado Tipo Notario</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($tipoNotario as $value) {?>
			<tr>
				<td><?php echo $value->idTipo_notario; ?></td>
				<td><?php echo $value->tipo_notario; ?></td>
				<td><?php echo $value->Estado; ?></td>
				<td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="ActualizarTipoNotario(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'tipoNotario/deleteTipoNotario/' . htmlspecialchars($value->idTipo_notario, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>


				
			</tr>


		<?php } ?>

		
		</tbody>
	</table>
</div>



