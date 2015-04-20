<form enctype="multipart/form-data" action="<?php echo URL; ?>minuta/subir" method="POST">
	<div class="span7 center" align="center">
	<table>
	<tr>
		<td></td>
		<td class="td"><input name="uploadedfile" type="file"/></td>
	</tr>
	<tr>
		<td><label for="">Descripción</label></td>
		<td class="td"><textarea placeholder="Descripción" class="form-control" name="txtDescripcion" id="" cols="30" rows="3"></textarea></td>
	</tr>
	<tr>
		<td><label for="">Nombre</label></td>
		<td class="td"><input type="text" name="txtNombre" placeholder="Nombre" class="form-control"></td>
	</tr>
	<tr>
		<td><label for="">Versión</label></td>
		<td class="td"><input type="number" name="txtVersion" placeholder="Versión" class="form-control"></td>
	</tr>
	<tr>
		<td><label for="">Tipo de escritura</label></td>
		<td class="td">
			<select name="ddltipo" id="">
				<?php 
					foreach ($tipo as $item) {
			              echo "<option value='$item->IdTipo_Escritura'>$item->Nombre</option>";
			          }
				 ?>
			</select>
		</td>
	</tr>
	</table>
	<button class="btn btn-material-grey-500">Cancelar</button><input type="submit" value="Subir archivo" class="btn btn-primary"/>
</div>
</form> 

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
