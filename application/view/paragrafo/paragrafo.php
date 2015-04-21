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
		<td><label for="">Codigo Paragrafo</label></td>
		<td class="td"><input type="text" readonly="readonly" id="TxtCParagrafo"class="form-control" placeholder="Codigo Paragrafo" required tabindex="1"></td>
	</tr>
	<tr>
		<td><label for="">Nombre Paragrafo</label></td>
		<td class="td"><input type="text" maxlength="6" onkeyup="return ismaxlengt(this)" id="TxtNombre" class="form-control" placeholder="Nombre Paragrafo" required tabindex="2"></td>
	</tr>
	<tr>
		<td><label for="">Descripcion Paragrafo</label></td>
		<td class="td"><input type="text" maxlength="40" onkeyup="return ismaxlengt(this)" id="TxtDescripcion" class="form-control" placeholder="Descripcion Paragrafo" required tabindex="3"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" tabindex="5" id="btn_Update_Paragrafo"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button tabindex="4" id="btn_Add_Paragrafo" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>

<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Codigo Paragrafo</th>
				<th>Nombre Paragrafo</th>
				<th>Estado Paragrafo</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($Paragrafo as $value) {?>
			<tr>
				<td><?php echo $value->IdParagrafo; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Descripcion; ?></td>
			    <td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="return ActualizarParagrafo(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
			    <a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'Paragrafo/deleteParagrafo/' . htmlspecialchars($value->IdParagrafo, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>