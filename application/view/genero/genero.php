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
		<td><label for="">Id Genero</label></td>
		<td class="td"><input type="text" id ="TxtidGene" class="form-control"  readonly="readonly" placeholder="Nombre del genero"></td>
	</tr>

	<tr>
		<td><label for="">Nombre del genero</label></td>
		<td class="td"><input type="text" id ="TxtNombreGenero" class="form-control" placeholder="Nombre del genero"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_Genero"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_Genero" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>



<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Id genero</th>
				<th>Nombre</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($tiposGenero as $value) {?>
			<tr>
				<td><?php echo $value->IdGenero; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="ActualizarGenero(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'genero/deleteGenero/' . htmlspecialchars($value->IdGenero, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-download-alt"></span></a>
				<button id="Inh" class="btn btn-fab btn-raised btn-material-teal-700" onclick="document.location.reload()"><span class="glyphicon glyphicon-refresh" aria-hidden="true"></span></button></td>
			</tr>

		<?php } ?>

		<script type="text/javascript">
 
 
}
</script>

		
		</tbody>
	</table>
</div>

