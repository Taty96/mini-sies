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
		<td><label for="">Nombre del paragrafo</label></td>
		<td class="td"><input type="text" id="TxtNombreParagrafo" class="form-control" placeholder="Nombre del paragrafo"></td>
	</tr>
	<tr>
		<td><label for="">Cuerpo del paragrafo</label></td>
		<td class="td"><input type="text" id="TxtDescripcion" class="form-control" placeholder="Cuerpo del paragrafo"></td>
	</tr>
	</table>
	<button class="btn btn-material-grey-500">Cancelar</button><button id="btn_Guardar" type="submit" data-dismiss="modal" class="btn btn-material-red-800">Guardar</button>
</div>