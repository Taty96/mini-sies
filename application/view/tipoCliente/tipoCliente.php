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
		<td><label for="">Codigo Cliente</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtCodigoTC"placeholder="Tipo de Cliente"></td>

	</tr>
	<tr>
		<td><label for="">Nombre </label></td>
		<td class="td"><input type="text" class="form-control" id="TxtNombre"placeholder="Nombre "></td>
	</tr>
	<tr>
		<td><label for="">Estado</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtEstado" placeholder="Estado"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;" data-dismiss="modal" id="btn_Update_TipoCliente"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_TipoCli" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>

<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Codigo Cliente</th>
				<th>Nombre</th>
				<th>Estado</th>				
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($tipoCliente as $value) {?>
			<tr>
				<td><?php echo $value->IdTipoCliente; ?></td>			
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Estado; ?></td>
				<td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick=" return ActualizarTipoCliente(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700" href="<?php echo URL . 'tipoCliente/deleteTipoCliente/' . htmlspecialchars($value->IdTipoCliente, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>