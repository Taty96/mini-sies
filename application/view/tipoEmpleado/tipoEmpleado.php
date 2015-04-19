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
document.formularioContacto.TxtNVA.focus();
document.formularioContacto.addEventListener('submit', validarFormulario);
}
 
function validarFormulario() {

var todoCorrecto = true;
var formulario = document.formularioContacto;
for (var i=0; i<formulario.length; i++) {
                if(formulario[i].type =='text') {
                               if (formulario[i].value == null || formulario[i].value.length == 0 || /^\s*$/.test(formulario[i].value)){
                               alert (formulario[i].name+ ' no puede estar vacío o contener sólo espacios en blanco');
                               todoCorrecto=false;
                               }
                }
                }
return todoCorrecto;
}
</script>




<script type="text/javascript">
 
function ismaxlength(obj){
var mlength=obj.getAttribute? parseInt(obj.getAttribute("maxlength")) : ""
if (obj.getAttribute && obj.value.length>mlength)
obj.value=obj.value.substring(0,mlength)
}
 
</script>

<form name="formularioContacto">
	<div class="span7 center" align="center">
	
	<table>

	<tr >
		<td><label for="">ID Empleado</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtIDTU" readonly="readonly" placeholder="ID de Empleado"></td>

	</tr>
	<tr>
		<td><label for="">Nivel de Acceso</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtNVA"placeholder="Nivel de Acceso" required></td>

	</tr>
	<tr>
		<td><label for="">Nombre Empleado</label></td>
		<td class="td"><input type="text" class="form-control" maxlength="12" onkeyup="return ismaxlengt(this)"id="TxtNombre"placeholder="NombTipo Empleadore "></td>
	</tr>
	<tr>
		<td><label for="">Estado</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtEstado" placeholder="Estado"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_TipoEmple"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_TipoEmple" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
	</div>
</form>


<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Tipo Empleado</th>
				<th>Nivel de acceso</th>
				<th>Nombre</th>
				<th>Estado</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($tiposEmpleado as $value) {?>
			<tr>
				<td><?php echo $value->IdTipo_Empleado; ?></td>
				<td><?php echo $value->NivelAcceso; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Estado; ?></td>
				<td><button class="btn btn-fab btn-raised btn-material-teal-300"  onclick=" return ActualizarTipoEmpleado(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'tipoEmpleado/deleteTempleado/' . htmlspecialchars($value->IdTipoEmpleado, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>