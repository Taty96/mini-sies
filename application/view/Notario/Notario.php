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
		<td><label for="">Codigo Notario</label></td>
		<td class="td"><input type="text" readonly="readonly" id="TxtCN" class="form-control" placeholder="Codigo Notario"></td>
	</tr>
	<tr>
		<td><label for="">Nombre del notario</label></td>
		<td class="td"><input type="text" id="TxtNombre" class="form-control" placeholder="Nombre Notario"></td>
	</tr>
	<tr>
		<td><label for="">Fecha de inicio</label></td>
		<td class="td"><input type="date" id="TxtFechaI" class="form-control" placeholder="Fecha Inicio"></td>
	</tr>
	<tr>
		<td><label for="">Fecha de fin</label></td>
		<td class="td"><input type="date" id="TxtFechaF" class="form-control" placeholder="Fecha Fin"></td>
	</tr>
	<tr>
		<td><label for="">Nombre de la notaria</label></td>
		<td class="td"><input type="text" id="TxtNombreN" class="form-control" placeholder="Nombre Notaria"></td>
	</tr>
	<tr>
		<td><label for="">Estado</label></td>
		<td class="td"><input type="text" id="TxtEstado" class="form-control" placeholder="Estado"></td>
	</tr>
	<tr>
	<tr>
		<td><label for="">Tipo Notario</label></td>
		<td class="td"><select id="sltTipoN" class="form-control" OnFocus="this.blur()">					
			<?php 
			   foreach ($SelectN as $value) {
				  echo "<option value ='$value->idTipo_notario'>$value->tipo_notario</option>";
			   }
		    ?>
		</select></td>
	</tr>
		
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_Notario">Actualizar</button><button id="btn_Add_Notario" type="submit" data-dismiss="modal" class="btn btn-material-red-800">Guardar</button>
</div>

<div class="span6">
	<table>
		<thead>
			<tr>
				<th>Codigo Notario</th>
				<th>Nombre Notario</th>
				<th>Fecha Inicio</th>
				<th>Fecha Fin</th>
				<th>Nombre Notaria</th>
				<th>Estado</th>
				<th>Tipo Notario</th>
			</tr>
		</thead>

		<tbody> 
		
		<?php foreach ($Notario as $value) {?>
			<tr>
				<td><?php echo $value->IdNotario; ?></td>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->FechaInicio; ?></td>
				<td><?php echo $value->FechaFin; ?></td>
				<td><?php echo $value->NombreNotaria; ?></td>
				<td><?php echo $value->Estado; ?></td>
				<td><?php echo $value->tipo; ?></td>
			    <td><button class="btn btn-material-grey-500" onclick="return ActualizarNotario(this,'<?php echo $value->Tipo_notario_idTipo_notario; ?>');">Editar</button></td>
			    <td><a class="btn btn-material-red-800" href="<?php echo URL . 'Notario/deleteNotario/' . htmlspecialchars($value->IdNotario, ENT_QUOTES, 'UTF-8'); ?>">Eliminar</a></td>
			</tr>

		<?php } ?>
		</tbody>
	</table>
</div>