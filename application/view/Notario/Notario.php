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
<div class="span7 center" align="center">
	<table>
	<tr>
		<td><label for="">Nombre del notario</label></td>
		<td class="td"><input type="text" id ="TxtNombreNotario" class="form-control" placeholder="Nombre del Notario"></td>
	</tr>
	<tr>
		<td><label for="">Fecha de inicio</label></td>
		<td class="td"><input type="date" id ="TxtFechaInicio" class="form-control" placeholder="Fecha de inicio"></td>
	</tr>
	<tr>
		<td><label for="">Fecha de fin</label></td>
		<td class="td"><input type="date" id ="TxtFechaFin" class="form-control" placeholder="Fecha de fin"></td>
	</tr>
	<tr>
		<td><label for="">Nombre de la notaria</label></td>
		<td class="td"><input type="text" id ="TxtNombreNotaria" class="form-control" placeholder="Nombre notaria"></td>
	</tr>
	<tr>
		<td><label for="">Estado</label></td>
		<td class="td"><input type="text" id ="TxtEstado" class="form-control" placeholder="Estado"></td>
	</tr>
	<tr>
		<td><label for="">Tipo Notario</label></td>
		<td class="td"><input type="text" id ="TxtTipoNotario" class="form-control" placeholder="Tipo Notario"></td>
	</tr>
	</table>
	<button class="btn btn-material-grey-500">Cancelar</button><button id="btn_Guardar" type="submit" data-dismiss="modal" class="btn btn-material-red-800">Guardar</button>
</div>