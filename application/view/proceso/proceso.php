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
		<td><label for="">Codigo Proceso</label></td>
		<td class="td"><input type="text" id="TxtCodigoProce"class="form-control" placeholder="Descripcion del proceso"></td>
	</tr>

	<tr>
		<td><label for="">Descripcion del proceso</label></td>
		<td class="td"><input type="text" id="TxtDescriProce"class="form-control" placeholder="Descripcion del proceso"></td>
	</tr>
	<tr>
		<td><label for="">Nombre del proceso</label></td>
		<td class="td"><input type="text" id="TxtNombreProce"class="form-control" placeholder="Nombre del proceso"></td>
	</tr>
	<tr>
		<td><label for="">Estado del proceso</label></td>
		<td class="td"><input type="text" id="TxtEstadoProce"class="form-control" placeholder="Estado del proceso"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_Proceso"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_Proceso" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>      Guardar</button>
</div>

<div class="span6" id="div1">

	<table class="table table-hover" id="FondoT">
		<thead >
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Codigo Proceso</th>
				<th>Descripcion Del proceso</th>
				<th>Nombre de proceso</th>
				<th>Estado De proceso</th>
				<th>Acciones</th>
			</tr>
		</thead>

		
			
		</style>
		
		<?php foreach ($Proceso as $value) {?>
			<tr>
				<td><?php echo $value->IdProceso; ?></td>
				<td><?php echo $value->Descripcion; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Estado; ?></td>
			    <td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="return ActualizarProce(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'Proceso/deleteProceso/' . htmlspecialchars($value->IdProceso, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</div>
	</table>
</div>
