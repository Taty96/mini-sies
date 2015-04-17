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
		<td><label for="">Nombre del tipo de cliente</label></td>
		<td class="td"><input type="text" class="form-control" placeholder="Nombre del tipo de cliente"></td>
	</tr>
	<tr>
		<td><label for="">Tipo de cliente</label></td>
		<td class="td">
			<div class="radio radio-success">
              <label>
                <input type="radio" name="sample1" value="option1" checked=""><span class="circle"></span><span class="check"></span>
                Juridico
              </label>
            </div>
            <div class="radio radio-success">
              <label>
                <input type="radio" name="sample1" value="option1" checked=""><span class="circle"></span><span class="check"></span>
                Natural
              </label>
        </td>
	</tr>
	</table>
	<button class="btn btn-material-grey-500">Cancelar</button><button class="btn btn-material-red-800">Guardar</button>
</div>