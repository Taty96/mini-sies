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

<script >

window.onload = function (){
document.formularioinfo.textNombrerequisito.focus();
document.formularioinfo.addEventListener('submit', validarFormulario);
}
 
function validarFormulario() {

var todoCorrecto = true;
var formulario = document.formularioinfo;
for (var i=0; i<formulario.length; i++) {
                if(formulario[i].type =='text') {
                               if (formulario[i].value == null || formulario[i].value.length == 0 || /^\s*$/.test(formulario[i].value)){
                               alertify.alert(formulario[i].name+ ' <h4>No puede estar vacío o contener sólo espacios en blanco</h4>');
                               todoCorrecto=false;
                               }
                }
                }
return todoCorrecto;
}
</script>


<form name="formularioinfo">
	<div class="span7 center" align="center">
	<table>
	<tr>
		<td><label for="">Nombre del requisito</label></td>
		<td class="td"><input type="text" class="form-control" maxlength="12" onkeyup="return ismaxlengt(this)" id="textNombrerequisito" placeholder="Nombre del requisito" tabindex="1"></td>
	</tr>
	<tr>
		<td><label for="">Opcional</label></td>
		<td>
			<div class="checkbox">
	          <label>
	            <input type="checkbox" id="CkOpcional"><span class="checkbox-material"><span class="check" tabindex="2"></span></span> Requerido
	          </label>
	        </div>
		</td>
	</tr>
	</table>
	<button class="btn btn-material-grey-500">Cancelar</button><button tabindex="3" id="btn_Add_Requi" type="submit" data-dismiss="modal" class="btn btn-material-red-800">Guardar</button>
</div>
</form>