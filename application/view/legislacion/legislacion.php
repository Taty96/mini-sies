

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
		<td><label for="">Codigo de la legislación</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtCodigoLegislacion"placeholder="Nombre de la legislación"></td>
	</tr>

	<tr>
		<td><label for="">Descripcion de la legislación</label></td>
		<td class="td"><input type="text" class="form-control" id="txtNombreLeg"placeholder="Nombre de la legislación"></td>
	</tr>
	<tr>
		<td><label for="">Nombre de la legislación</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtDescripLegis" placeholder="Descripción de la legislación"></td>
	</tr>
	<tr>
		<td><label for="">Estado</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtEstadoLegis" placeholder="Estado"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_Legislacion"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar </button><button id="btn_Add_Legislacion" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>


<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Codigo Legislacion</th>
				<th>Nombre</th>
				<th>Descripcion</th>
				<th>Estado</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($legislacion as $value) {?>
			<tr>
				<td><?php echo $value->IdLegislacion; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Descripcion; ?></td>
				<td><?php echo $value->Estado; ?></td>
				<td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="ActualizarLegislacion(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700" href="<?php echo URL . 'Legislacion/deleteLegislacion/' . htmlspecialchars($value->IdLegislacion, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>

			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>

