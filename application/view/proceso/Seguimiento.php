<style >
body{
  background-image: url("<?php echo URL; ?>public/img/7H.jpg");
-webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
}
  
</style>

<body>
<div class="image-container set-full-height" style="background-image: url('images/wizard.jpg')">
    <!--   Creative Tim Branding   -->
 
    
    <!--   Big container   -->
    <div class="container">
        <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
           
            <!--      Wizard container        -->   
            <div class="wizard-container"> 
                <form action="" method="">
                <div class="card wizard-card ct-wizard-orange" id="wizard">
                
                <!--        You can switch "ct-wizard-orange"  with one of the next bright colors: "ct-wizard-blue", "ct-wizard-green", "ct-wizard-orange", "ct-wizard-red"             -->
                
                    	<div class="wizard-header">
                        	<h3>
                        	   <b>Proceso de escrituración</b>  <br>
                        	   <small><a type="button"  href="<?php echo URL;?>/proceso">Volver a proceso</a></small>
                        	</h3>
                    	</div>
                    	<ul>
                            <li><a href="#about" data-toggle="tab">Cliente</a></li>
                            <li><a href="#account" data-toggle="tab">Escritura</a></li>
                            <li><a href="#address" data-toggle="tab">Address</a></li>
                            <li><a href="#address" data-toggle="tab">Address</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane" id="about">
                              <div class="row">
                                  <h4 class="info-text"> Verificar Cliente</h4>
                                  <div class="col-sm-4 col-sm-offset-1">
                                    
                                  </div>
                                
                                  <div class="col-sm-8 col-sm-offset-1">
                                  
                                   <tr>
                                        <td><label for=""><b>Tipo Documento</label></td></b>
                                         <td class="td"><select id="TxtEstado" name="texto" class="form-control">                
                                        <option selected>Cedula </option>
                                        <option  >Tarjeta de identidad</option>
                                         </select></td><br>
                                         </tr>
                                           <label><b>Documento Cliente</b></label>
                                          <input type="text" class="form-control" placeholder="Documento Cliente">
                                         <tr><br>
                                            <a type="submit" href="<?php echo URL;?>/tipoCliente" >Agregar cliente si no esta registrado.</a>

                                            
                                   
                                  </div>
                              </div>
                            </div>
                            <div class="tab-pane" id="account">
                                <h4 class="info-text"> Verificar escritura </h4>
                                <div class="row" id="div2">
                                    <div class="col-sm-8 col-sm-offset-1">
                                            <td><label for=""><b>Tipo Escritura</label></td></b>
                                         <td class="td"><select id="TxtEstado" name="texto" class="form-control">                
                                        <option selected>Divorcio </option>
                                        <option  >Matrimonio</option>
                                         </select></td><br>

                                            <td><label for=""><b>Protocolista</label></td></b>
                                         <td class="td"><select id="TxtEstado" name="texto" class="form-control">                
                                        <option selected>Andrea Garces </option>
                                        <option  >Mateo Alberto</option>
                                         </select></td><br>

                                           <td><label for=""><b>Notario</label></td></b>
                                         <td class="td"><select id="TxtEstado" name="texto" class="form-control">                
                                        <option selected>Tatiana Villegas </option>
                                        <option  >David Restrepo</option>
                                         </select></td><br>

                                           <td><label for=""><b>Requisitos</label></td></b>
                                         <td class="td"><select id="TxtEstado" name="texto" class="form-control">                
                                        <option selected>Fotocopia cedula </option>
                                        <option  >Foto tipo documento</option>
                                         </select></td><br>
                                         <b>Requisitos Agregados</b><br>                                       

                                         <label>Fotocopia cedula</label><br>

                                         <label><b>Observaciones</b></label><br>
                                         
                                         <textarea rows="5" cols="50" placeholder="Observaciones..."></textarea>
                                           
                                          
                                         <tr><br>
                                        <br>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="address">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <h4 class="info-text"> Are you living in a nice area? </h4>
                                    </div>
                                    <div class="col-sm-7 col-sm-offset-1">
                                         <div class="form-group">
                                            <labe>Street Name</label>
                                            <input type="text" class="form-control" placeholder="5h Avenue">
                                          </div>
                                    </div>
                                    <div class="col-sm-3">
                                         <div class="form-group">
                                            <label>Street Number</label>
                                            <input type="text" class="form-control" placeholder="242">
                                          </div>
                                    </div>
                                    <div class="col-sm-5 col-sm-offset-1">
                                         <div class="form-group">
                                            <label>City</label>
                                            <input type="text" class="form-control" placeholder="New York...">
                                          </div>
                                    </div>
                                    <div class="col-sm-5">
                                         <div class="form-group">
                                            <label>Country</label><br>
                                             <select name="country" class="form-control">
                                                <option value="Afghanistan"> Afghanistan </option>
                                                <option value="Albania"> Albania </option>
                                                <option value="Algeria"> Algeria </option>
                                                <option value="American Samoa"> American Samoa </option>
                                                <option value="Andorra"> Andorra </option>
                                                <option value="Angola"> Angola </option>
                                                <option value="Anguilla"> Anguilla </option>
                                                <option value="Antarctica"> Antarctica </option>
                                                <option value="...">...</option>
                                            </select>
                                          </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="wizard-footer">
                            	<div class="pull-right">
                                    <input type='button' class='btn btn-next btn-fill btn-warning btn-wd btn-sm' name='next' value='Next' />
                                    <input type='button' class='btn btn-finish btn-fill btn-warning btn-wd btn-sm' name='finish' value='Finish' />
        
                                </div>
                                <div class="pull-left">
                                    <input type='button' class='btn btn-previous btn-fill btn-default btn-wd btn-sm' name='previous' value='Previous' />
                                </div>
                                <div class="clearfix"></div>
                        </div>	
                </div>
                </form>
            </div> <!-- wizard container -->
        </div>
        </div><!-- end row -->
    </div> <!--  big container -->
    
    
   

</div>

</body>

  
	
</html>