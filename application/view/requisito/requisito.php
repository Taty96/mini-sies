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
		<td><label for="">Nombre del requisito</label></td>
		<td class="td"><input type="text" class="form-control" placeholder="Nombre del requisito"></td>
	</tr>
	<tr>
		<td><label for="">Requerido</label></td>
		<td>
			<div class="checkbox">
	          <label>
	            <input type="checkbox"><span class="checkbox-material"><span class="check"></span></span> Requerido
	          </label>
	        </div>
		</td>
	</tr>
	</table>
	<button class="btn btn-material-grey-500">Cancelar</button><button class="btn btn-material-red-800">Guardar</button>
</div>