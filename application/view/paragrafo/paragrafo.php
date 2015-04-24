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
		num_caracteres_permitidos = 25

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
		<td><label for="">Nombre Paragrafo</label></td>
		<td class="td"><input type="text" id="TxtNombre" name="texto" class="form-control" placeholder="Nombre Paragrafo" onkeydown="return validarLetras(event)" onKeyUp="valida_longitud()" required></td>
	</tr>
	<tr>
		<td><label for="">Descripcion Paragrafo</label></td>
		<td class="td"><input type="text" id="TxtDescripcion" class="form-control" placeholder="Descripcion Paragrafo" onkeydown="return validarLetras(event)"  required></td>
	</tr>
	</table>
	<button type="submit" class="btn btn-material-grey-500" style="display:none;"data-dismiss="modal" id="btn_Update_Paragrafo"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span> Actualizar</button><button id="btn_Add_Paragrafo" type="submit" data-dismiss="modal" name="eviar_paragrafo" class="btn btn-material-red-800"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> Guardar</button>
</div>

<div class="span6" id="div1">
	<table class="table table-hover" id="FondoT">
		<thead>
			<tr class="tabla" border="1" bordercolor="#FFFFFF" cellpadding="20">
				<th>Nombre Paragrafo</th>
				<th>Estado Paragrafo</th>
				<th>Acciones</th>
			</tr>
		</thead>

		<tbody>
		
		<?php foreach ($Paragrafo as $value) {?>
			<tr>
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->Descripcion; ?></td>
			    <td><button class="btn btn-fab btn-raised btn-material-teal-300" onclick="return ActualizarParagrafo(this);"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
			    <a class="btn btn-fab btn-raised btn-material-teal-700"  href="<?php echo URL . 'Paragrafo/deleteParagrafo/' . htmlspecialchars($value->IdParagrafo, ENT_QUOTES, 'UTF-8'); ?>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a></td>
			</tr>

		<?php } ?>

		
		</tbody>
	</table>
</div>	
</form>
