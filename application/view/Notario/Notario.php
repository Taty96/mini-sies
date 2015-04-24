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



	<div class="span7 center" align="center" >
	<table>

	<tr>
		<td><label for="">Nombre del notario</label></td>
		<td class="td"><input type="text" id="TxtNombre" class="form-control" placeholder="Nombre Notario" onkeydown="return validarLetras(event)" onKeyUp="valida_longitud()"></td>
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
		<td class="td"><input type="text" id="TxtNombreN" class="form-control" placeholder="Nombre Notaria" onkeydown="return validarLetras(event)" onKeyUp="valida_longitud()"></td>
	</tr>
	<tr>
		<td><label for="">Estado</label></td>
		<td class="td"><select id="TxtEstado" name="texto" class="form-control">				
		<option value ='0'>Inactivo</option>
		<option value ='1' selected>Activo</option>

	


		</select></td>
	</tr>
	<tr>
		<td><label for="">Tipo Notario</label></td>
		<td class="td"><select id="sltTipoN" class="form-control">					
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
				<td><?php echo $value->Nombre; ?></td>
				<td><?php echo $value->FechaInicio; ?></td>
				<td><?php echo $value->FechaFin; ?></td>
				<td><?php echo $value->NombreNotaria; ?></td>
				<td><?php echo $value->Estado; ?></td>
				<td><?php echo $value->Tipo_notario_idTipo_notario; ?></td>
			    <td><button class="btn btn-material-grey-500" onclick="ActualizarNotario(this);">Editar</button></td>
			    <td><a class="btn btn-material-red-800" href="<?php echo URL . 'Notario/deleteNotario/' . htmlspecialchars($value->IdNotario, ENT_QUOTES, 'UTF-8'); ?>">Eliminar</a></td>
			</tr>

		<?php } ?>
		</tbody>
	</table>
</div>


