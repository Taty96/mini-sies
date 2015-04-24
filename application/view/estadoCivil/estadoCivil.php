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
<head>
	<script type="text/javascript">
		function validarLetras(e) { // 1
		    TxtNombre = (document.all) ? e.keyCode : e.which; 
		    if (TxtNombre==8) return true; // backspace
				if (TxtNombre==32) return true; // espacio
				if (e.ctrlKey && TxtNombre==86) { return true;} //Ctrl v
				if (e.ctrlKey && TxtNombre==67) { return true;} //Ctrl c
				if (e.ctrlKey && TxtNombre==88) { return true;} //Ctrl x
		 
				patron = /[a-zA-Z]/; //patron
		 
				te = String.fromCharCode(TxtNombre); 
				return patron.test(te); // prueba de patron
		}	
	</script>
	<script> 
		contenido_textarea = "" 
		num_caracteres_permitidos = 15

		function valida_longitud(){ 
  			 num_caracteres = document.forms[0].texto.value.length 

   			if (num_caracteres > num_caracteres_permitidos){ 
      			document.forms[0].texto.value = contenido_textarea 
   			}else{ 
      			contenido_textarea = document.forms[0].texto.value	
   			} 
			if (num_caracteres >= num_caracteres_permitidos){ 
      			document.forms[0].texto.style.color="#ff0000"; 
   			}else{ 
     			 document.forms[0].texto.style.color="#000000"; 
    		}  
		} 
</script>
</head>
<form>
	 	<div class="span7 center" align="center">
	<table>
		<tr>
		<td><label for="">Codigo Estado Civil</label></td>
		<td class="td"><input type="text" readonly="readonly" id="TxtCEC"class="form-control" placeholder="Codigo Estado Civil"></td>
	</tr>

	<tr>
		<td><label for="">Nombre Estado Civil</label></td>
		<td class="td"><input type="text" name="texto" id="TxtNombre" class="form-control" placeholder="Nombre Estado Civil" onkeydown="return validarLetras(event)" onKeyUp="valida_longitud()"></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_EC"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_EC" name="enviar" type="submit" data-dismiss="modal" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>

<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Codigo Estado Civil</th>
				<th>Nombre Estado Civil</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($EstadoCivil as $value) {?>
			<tr>
				<td><?php echo $value->IdEstado_Civil; ?></td>
				<td><?php echo $value->Nombre; ?></td>
			    <td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="return ActualizarEC(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
				<a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'EstadoCivil/deleteEstadoCivil/' . htmlspecialchars($value->IdEstado_Civil, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>
</form>
