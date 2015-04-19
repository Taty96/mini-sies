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
		<td><label for="">Documento</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtDocumento" placeholder="Ejemplo: CC, TI."></td>
	</tr>

	<tr>
		<td><label for="">Nombre</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtNombre" placeholder="Nombre"></td>
	</tr>
	<tr>
		<td><label for="">Sufijo</label></td>
		<td class="td"><input type="text" class="form-control" id="TxtSufijo" placeholder="Sufijo"></td>
	</tr>
	</table>
	<button type="submit" style="display:none;" class="btn btn-material-grey-500" data-dismiss="modal" id="btn_Update_TipoDocu"> <span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_TipoDocu" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>  Guardar</button>
</div>


<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Documento</th>
				<th>Nombre</th>
				<th>Sufijo</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($tipoDocumento as $value) {?>
			<tr>
				<td><?php echo $value->IdTipoDocumento; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Sufijo; ?></td>
				<td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="ActualizarTipoDocumento(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'tipoDocumento/deleteTipodocumento/' . htmlspecialchars($value->IdTipoDocumento, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>

