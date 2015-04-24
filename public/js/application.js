$(function() {

    // just a super-simple JS demo

    var demoHeaderBox;

     if ($('#btn_Update_Notario').length !== 0) {

    $('#btn_Update_Notario').on('click', function(){
        var  IdNotario,Nombre,FechaInicio,FechaFin,NombreNotaria,Estado,Tipo_notario_idTipo_notario;
        IdNotario = $ ("#TxtCN").val();
        Nombre = $("#TxtNombre").val();
        FechaInicio = $ ("#TxtFechaI").val();
        FechaFin = $("#TxtFechaF").val();
        NombreNotaria = $ ("#TxtNombreN").val();
        Estado = $("#TxtEstado").val();
        Tipo_notario_idTipo_notario = $ ("#sltTipoN").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/Notario/UpdateNotario",
                data: {"TxtCN": IdNotario, "TxtNombre": Nombre, "TxtFechaI": FechaInicio, "TxtFechaF": FechaFin, "TxtNombreN": NombreNotaria, "TxtEstado": Estado, "sltTipoN":Tipo_notario_idTipo_notario}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                   
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}


   if ($('#btn_Add_Notario').length !== 0) {

        $('#btn_Add_Notario').on('click', function(){
       var  Nombre,FechaInicio,FechaFin,NombreNotaria,Estado,idTipo_notario;
        Nombre = $("#TxtNombre").val();
        FechaInicio = $ ("#TxtFechaI").val();
        FechaFin = $("#TxtFechaF").val();
        NombreNotaria = $ ("#TxtNombreN").val();
        Estado = $("#TxtEstado").val();
        idTipo_notario = $ ("#sltTipoN").val();

             
                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/Notario/addNotario",
                    data: {"TxtNombre": Nombre, "TxtFechaI": FechaInicio, "TxtFechaF": FechaFin, "TxtNombreN": NombreNotaria, "TxtEstado": Estado, "sltTipoN": idTipo_notario }
                })
                .done(function(result) {

                        alert(result);

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
            });
    }







if ($('#btn_Add_TipoN').length !== 0) {

$('#btn_Add_TipoN').on('click', function(){
        var idTipo_notario, tipo_notario, Estado;
        idTipo_notario = $("#TxtCodigoTN").val();
        tipo_notario = $("#TxtNombreTipoNotario").val();
        Estado = $("#TxtEstadoTipoNotario").val();
      

            if (validarFormulario()) {
            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            // "url" is defined in views/_templates/footer.php
            $.ajax({
                type: "POST",
                url: url+"/tipoNotario/addTipoNotario",
                data: { "TxtCodigoTN": idTipo_notario, "TxtNombreTipoNotario": tipo_notario, "TxtEstadoTipoNotario":Estado}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alertify.alert(result);
                    Console.log(result);


                    $("#TxtCodigoTN").val();
                    $("#TxtNombreTipoNotario").val();
                    $("#TxtEstadoTipoNotario").val();

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not
                });
            };
        });
}

    // simple demo to show create something via javascript on the page
   if ($('#btn_Add_Genero').length !== 0) {

    $('#btn_Add_Genero').on('click', function(){
        var Nombre;
        Nombre = $("#TxtNombreGenero").val();
      

            if (validarFormulario()) {
            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            // "url" is defined in views/_templates/footer.php
            $.ajax({
                type: "POST",
                url: url+"/genero/addGenero",
                data: { "TxtNombreGenero": Nombre}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);


                    $("#TxtNombreGenero").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not
                });

            };
        });
}

 if ($('#btn_Add_TipoDocu').length !== 0) {

    $('#btn_Add_TipoDocu').on('click', function(){
        var IdTipoDocumento, Nombre , Sufijo;
        Nombre = $("#TxtNombre").val();
        Sufijo = $("#TxtSufijo").val();

        

            if (validarFormulario()) {
            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            // "url" is defined in views/_templates/footer.php
            $.ajax({
                type: "POST",
                url: url+"/tipoDocumento/addTipoDocumento",
                data: { "TxtNombre": Nombre, "TxtSufijo":Sufijo}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);


                   $("#TxtNombre").val();
                   $("#TxtSufijo").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not
                });
            };
        });
}


if ($('#btn_Add_Proceso').length !== 0) {

    $('#btn_Add_Proceso').on('click', function(){
        var Descripcion, Nombre, Estado;
        Descripcion = $("#TxtDescriProce").val();
        Nombre = $("#TxtNombreProce").val();
        Estado = $("#TxtEstadoProce").val();
      

            if (validarFormulario()) {
            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/proceso/addProcesos",
                data: { "TxtDescriProce": Descripcion, "TxtNombreProce" : Nombre, "TxtEstadoProce" : Estado}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);


                    $("#TxtDescriProce").val();
                    $("#TxtNombreProce").val();
                    $("#TxtEstadoProce").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not
                });
            };
        });
}






if ($('#btn_Add_TipoCli').length !== 0) {

    $('#btn_Add_TipoCli').on('click', function(){
        var  CodigoCliente,Nombre, Estado;
        CodigoCliente = $("#TxtCodigoTC").val();
        Nombre = $("#TxtNombre").val();
        Estado = $("#TxtEstado").val();
      

            if (validarFormulario()) {
            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/tipoCliente/addCliente",
                data: {"TxtCodigoTC": CodigoCliente , "TxtNombre" : Nombre, "TxtEstado" : Estado}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);

                    $("#TxtCodigoTC").val();
                    $("#TxtNombre").val();
                    $("#TxtEstado").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
            };
        });
}



    if ($('#btn_Add_Requi').length !== 0) {

        $('#btn_Add_Requi').on('click', function(){
            var  Nombrerequisito,Opcional;
            Nombrerequisito = $("#textNombrerequisito").val();
            Opcional = document.getElementById("CkOpcional").checked;

                alert(Opcional)
                if (validarFormulario()) {

                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/requisito/addRequisito",
                    data: {"textNombrerequisito": Nombrerequisito , "CkOpcional" : Opcional}
                })
                .done(function(result) {

                        alert(result);
                        
                        

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
                };
            });
    }


if ($('#btn_Add_TipoEmple').length !== 0) {

        $('#btn_Add_TipoEmple').on('click', function(){
            var  NivelAcceso,Nombre,Estado;
            NivelAcceso = $("#TxtNVA").val();
            Nombre = $("#TxtNombre").val();
            Estado = $("#TxtEstado").val();


                // send an ajax-r
                if (validarFormulario()) {
                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/tipoEmpleado/addTempleado",
                    data: {"TxtNVA": NivelAcceso , "TxtNombre" : Nombre, "TxtEstado": Estado}
                })
                .done(function(result) {

                        alert(result);
                        Console.log(result);

             $("#TxtNVA").val();
             $("#TxtNombre").val();
             $("#TxtEstado").val();
                        

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
                };
            });
    }
    if ($('#btn_Add_EC').length !== 0) {

        $('#btn_Add_EC').on('click', function(){
            var  IdEstado_Civil,Nombre;
            IdEstado_Civil = $("#TxtCEC").val();
            Nombre = $("#TxtNombre").val();


                // send an ajax-r

                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/estadoCivil/addEstadoCivil",
                    data: {"TxtNVA": IdEstado_Civil , "TxtNombre" : Nombre}
                })
                .done(function(result) {

                        alert(result);
                        Console.log(result);
                        

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
            });
    }

    if ($('#btn_Add_Paragrafo').length !== 0) {

        $('#btn_Add_Paragrafo').on('click', function(){
            var  Nombre,Descripcion;
            Nombre = $("#TxtNombre").val();
            Descripcion = $("#TxtDescripcion").val();


                // send an ajax-r

                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/paragrafo/addParagrafo",
                    data: {"TxtNombre" : Nombre, "TxtDescripcion" :Descripcion}
                })
                .done(function(result) {

                        alert(result);
                        Console.log(result);
                        

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
            });
    }

    if ($('#btn_Update_Paragrafo').length !== 0) {

        $('#btn_Update_Paragrafo').on('click', function(){
            var  IdParagrago,Nombre,Descripcion;
            IdParagrago = $("#TxtCParagrafo").val();
            Nombre = $("#TxtNombre").val();
            Descripcion = $("#TxtDescripcion").val();

                // send an ajax-r

                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/paragrafo/updateParagrafo",
                    data: {"TxtCParagrafo": IdParagrago , "TxtNombre" : Nombre, "TxtDescripcion" :Descripcion}
                })
                .done(function(result) {

                        alert(result);
                        Console.log(result);
                        

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
            });
    }

    if ($('#btn_Update_TipoEmple').length !== 0) {

        $('#btn_Update_TipoEmple').on('click', function(){
            var  IdTEmpleado,NivelAcceso,Nombre,Estado;
            IdTEmpleado = $("#TxtIDTU").val();
            NivelAcceso = $("#TxtNVA").val();
            Nombre = $("#TxtNombre").val();
            Estado = $("#TxtEstado").val();
            

                // send an ajax-r

                // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
                $.ajax({
                    type: "POST",
                    url: url+"/tipoempleado/UpdateTempleado",
                    data: {"TxtIDTU" :IdTEmpleado , "TxtNVA": NivelAcceso , "TxtNombre" : Nombre , "TxtEstado": Estado}
                })
                .done(function(result) {

                        alert(result);
                        Console.log(result);
                        

                    })
                .fail(function() {
                        // this will be executed if the ajax-call had failed
                    })
                .always(function() {
                        // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                    });
            });
    }

 if ($('#btn_Update_Notario').length !== 0) {

    $('#btn_Update_Notario').on('click', function(){
        var  IdNotario,Nombre,FechaInicio,FechaFin,NombreNotaria,Estado,Tipo_notario_idTipo_notario;
        IdNotario = $ ("#TxtCN").val();
        Nombre = $("#TxtNombre").val();
        FechaInicio = $ ("#TxtFechaI").val();
        FechaFin = $("#TxtFechaF").val();
        NombreNotaria = $ ("#TxtNombreN").val();
        Estado = $("#TxtEstado").val();
        Tipo_notario_idTipo_notario = $ ("#sltTipoN").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/Notario/UpdateNotario",
                data: {"TxtCN": IdNotario, "TxtNombre": Nombre, "TxtFechaI": FechaInicio, "TxtFechaF": FechaFin, "TxtNombreN": NombreNotaria, "TxtEstado": Estado, "sltTipoN": Tipo_notario_idTipo_notario }
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);

                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}



if ($('#btn_Update_TipoCliente').length !== 0) {

    $('#btn_Update_TipoCliente').on('click', function(){
        var  CodigoCliente,Nombre, Estado;
        CodigoCliente = $("#TxtCodigoTC").val();
        Nombre = $("#TxtNombre").val();
        Estado = $("#TxtEstado").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/tipoCliente/UpdateCliente",
                data: {"TxtCodigoTC": CodigoCliente , "TxtNombre" : Nombre, "TxtEstado" : Estado}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);

                    $("#TxtCodigoTC").val();
                    $("#TxtNombre").val();
                    $("#TxtEstado").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}

if ($('#btn_Update_TipoDocu').length !== 0) {

    $('#btn_Update_TipoDocu').on('click', function(){
        var  Documento,Nombre, Sufijo;
        Documento = $("#TxtDocumento").val();
        Nombre = $("#TxtNombre").val();
        Sufijo = $("#TxtSufijo").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/tipoDocumento/UpdateDocumento",
                data: {"TxtDocumento": Documento , "TxtNombre" : Nombre, "TxtSufijo" : Sufijo}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);

                    $("#TxtDocumento").val();
                    $("#TxtNombre").val();
                    $("#TxtSufijo").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}
   
 if ($('#btn_Update_Proceso').length !== 0) {

    $('#btn_Update_Proceso').on('click', function(){
        var  Descripcion,Nombre, Estado, Codigo;
        Codigo = $ ("#TxtCodigoProce").val();
        Descripcion = $("#TxtDescriProce").val();
        Nombre = $("#TxtNombreProce").val();
        Estado= $("#TxtEstadoProce").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/proceso/UpdateProcesos",
                data: {"TxtCodigoProce": Codigo, "TxtDescriProce": Descripcion , "TxtNombreProce" : Nombre, "TxtEstadoProce" : Estado}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                    $("#TxtCodigoProce").val();
                    $("#TxtDescriProce").val();
                    $("#TxtNombreProce").val();
                    $("#TxtEstadoProce").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}  

   
 if ($('#btn_Update_EC').length !== 0) {

    $('#btn_Update_EC').on('click', function(){
        var  IdEstado_Civil,Nombre;
        IdEstado_Civil = $ ("#TxtCEC").val();
        Nombre = $("#TxtNombre").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/estadoCivil/UpdateEstadoCivil",
                data: {"TxtCEC": IdEstado_Civil, "TxtNombre": Nombre }
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                    $ ("#TxtCEC").val();
                    $("#TxtNombre").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
} 

 if ($('#btn_Update_TipoNotario').length !== 0) {

    $('#btn_Update_TipoNotario').on('click', function(){
        var  IdTipoNotario,NombreTN,EstadoTN;
        IdTipoNotario = $ ("#TxtCodigoTN").val();
        NombreTN = $("#TxtNombreTipoNotario").val();
        EstadoTN =$("#TxtEstadoTipoNotario").val();

      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/tipoNotario/UpdateTipoNotario",
                data: {"TxtCodigoTN": IdTipoNotario, "TxtNombreTipoNotario": NombreTN, "TxtEstadoTipoNotario": EstadoTN }
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                    $ ("#TxtCodigoTN").val();
                    $("#TxtNombreTipoNotario").val();
                    $("#TxtEstadoTipoNotario").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}

if ($('#btn_Update_Legislacion').length !== 0) {

    $('#btn_Update_Legislacion').on('click', function(){
        var  IdLegislacion,NombreLeg,Descripcion,Estado;
        IdLegislacion = $ ("#TxtCodigoLegislacion").val();
        NombreLeg = $("#txtNombreLeg").val();
        Descripcion =$("#TxtDescripLegis").val();
         Estado =$("#TxtEstadoLegis").val();

      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/Legislacion/UpdateLegislacion",
                data: {"TxtCodigoLegislacion": IdLegislacion, "txtNombreLeg": NombreLeg, "TxtDescripLegis": Descripcion, "TxtEstadoLegis": Estado }
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                    $ ("#TxtCodigoLegislacion").val();
                    $("#txtNombreLeg").val();
                    $("#TxtDescripLegis").val();
                    $("#TxtEstadoLegis").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}

if ($('#btn_Update_Genero').length !== 0) {
 $('#btn_Update_Genero').on('click', function(){
        var  IdGenero,NombreGenero;
        IdGenero = $ ("#TxtidGene").val();
        NombreGenero = $("#TxtNombreGenero").val();

      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/genero/UpdateGenero",
                data: {"TxtidGene": IdGenero, "TxtNombreGenero": NombreGenero}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                    $ ("#TxtidGene").val();
                    $("#TxtNombreGenero").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
        });
}


if ($('#btn_Add_Legislacion').length !== 0) {

    $('#btn_Add_Legislacion').on('click', function(){
        var  NombreLeg,Descripcion,Estado;
        NombreLeg = $("#txtNombreLeg").val();
        Descripcion =$("#TxtDescripLegis").val();
         Estado =$("#TxtEstadoLegis").val();

      

            if (validarFormulario()) {
            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            $.ajax({
                type: "POST",
                url: url+"/Legislacion/addLegislacion",
                data: { "txtNombreLeg": NombreLeg, "TxtDescripLegis": Descripcion, "TxtEstadoLegis": Estado }
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);
                    $("#txtNombreLeg").val();
                    $("#TxtDescripLegis").val();
                    $("#TxtEstadoLegis").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not   
                });
            };
        });
}


});

    function ActualizarTipoEmpleado (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdTipo_Empleado = nodosEnTr[0].textContent;
        var NivelAcceso = nodosEnTr[1].textContent;
        var Nombre = nodosEnTr[2].textContent;
        var Estado = nodosEnTr[3].textContent;
        document.getElementById('TxtIDTU').value = IdTipo_Empleado;
        document.getElementById('TxtNVA').value = NivelAcceso;
        document.getElementById('TxtNombre').value = Nombre;
        document.getElementById('TxtEstado').value = Estado;
        document.getElementById("btn_Update_TipoEmple").style.display = "initial";
    }

    function ActualizarGenero (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdGenero = nodosEnTr[0].textContent;
        var Nombre = nodosEnTr[1].textContent;
        document.getElementById('TxtidGene').value = IdGenero;
        document.getElementById('TxtNombreGenero').value = Nombre;
       document.getElementById("btn_Update_Genero").style.display = "initial";

    }

    function ActualizarTipoDocumento (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdTipoDocumento = nodosEnTr[0].textContent;
        var Nombre = nodosEnTr[1].textContent;
        var Sufijo = nodosEnTr[2].textContent;
        document.getElementById('TxtDocumento').value = IdTipoDocumento;
        document.getElementById('TxtNombre').value = Nombre;
        document.getElementById('TxtSufijo').value = Sufijo;
       document.getElementById("btn_Update_TipoDocu").style.display = "initial";

    }

    function ActualizarLegislacion (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdLegislacion = nodosEnTr[0].textContent;
        var Nombre = nodosEnTr[1].textContent;
        var Descripcion = nodosEnTr[2].textContent;
        var Estado = nodosEnTr[3].textContent;
        document.getElementById('TxtCodigoLegislacion').value = IdLegislacion;
        document.getElementById('txtNombreLeg').value = Nombre;
        document.getElementById('TxtDescripLegis').value = Descripcion;
        document.getElementById('TxtEstadoLegis').value = Estado;
        document.getElementById("btn_Update_Legislacion").style.display = "initial";
    }


    function ActualizarTipoCliente (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdTipoCliente = nodosEnTr[0].textContent;
        var Nombre = nodosEnTr[1].textContent;
        var Estado = nodosEnTr[2].textContent;
        document.getElementById('TxtCodigoTC').value = IdTipoCliente;
        document.getElementById('TxtNombre').value = Nombre;
        document.getElementById('TxtEstado').value = Estado;
        document.getElementById("btn_Update_TipoCliente").style.display = "initial";
    }

    function ActualizarProce (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdProceso = nodosEnTr[0].textContent;
        var Descripcion = nodosEnTr[1].textContent;
        var Nombre = nodosEnTr[2].textContent;
        var Estado = nodosEnTr[3].textContent;
        document.getElementById('TxtCodigoProce').value = IdProceso;
        document.getElementById('TxtDescriProce').value = Descripcion;
        document.getElementById('TxtNombreProce').value = Nombre;
        document.getElementById('TxtEstadoProce').value = Estado;
        document.getElementById("btn_Update_Proceso").style.display = "initial";
    }

    function ActualizarTipoNotario (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var idTipo_notario = nodosEnTr[0].textContent;
        var tipo_notario = nodosEnTr[1].textContent;
        var Estado = nodosEnTr[2].textContent;
        document.getElementById('TxtCodigoTN').value = idTipo_notario;
        document.getElementById('TxtNombreTipoNotario').value = tipo_notario;
        document.getElementById('TxtEstadoTipoNotario').value = Estado;
        document.getElementById("btn_Update_TipoNotario").style.display = "initial";
    }

    function ActualizarEC (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdEstado_Civil = nodosEnTr[0].textContent;
        var Nombre = nodosEnTr[1].textContent;
        document.getElementById('TxtCEC').value = IdEstado_Civil;
        document.getElementById('TxtNombre').value = Nombre;
        document.getElementById("btn_Update_EC").style.display = "initial";
    }

    function ActualizarParagrafo (nodo) {
        var nodoTd = nodo.parentNode;
        var nodoTr = nodoTd.parentNode;
        var nodosEnTr = nodoTr.getElementsByTagName('td');
        var IdParagrafo = nodosEnTr[0].textContent;
        var Nombre = nodosEnTr[1].textContent;
        var Descripcion = nodosEnTr[2].textContent;
        document.getElementById('TxtCParagrafo').value = IdParagrafo;
        document.getElementById('TxtNombre').value = Nombre;
        document.getElementById('TxtDescripcion').value = Descripcion;
        document.getElementById("btn_Update_Paragrafo").style.display = "initial";
    }

function ActualizarNotario (nodo) {
    var nodoTd = nodo.parentNode;
    var nodoTr = nodoTd.parentNode;
    var nodosEnTr = nodoTr.getElementsByTagName('td');
    var IdNotario = nodosEnTr[0].textContent;
    var Nombre = nodosEnTr[1].textContent;
    var FechaInicio = nodosEnTr[2].textContent;
    var FechaFin = nodosEnTr[3].textContent;
    var NombreNotaria = nodosEnTr[4].textContent;
    var Estado = nodosEnTr[5].textContent;
    document.getElementById('TxtCN').value = IdNotario;
    document.getElementById('TxtNombre').value = Nombre;
    document.getElementById('TxtFechaI').value = FechaInicio;
    document.getElementById('TxtFechaF').value = FechaFin;
    document.getElementById('TxtNombreN').value = NombreNotaria;
    document.getElementById('TxtEstado').value = Estado;
    document.getElementById("btn_Update_Notario").style.display = "initial";
}

function seleccionar(elemento, nom) {
   var combo =  document.getElementById(nom);

   var cantidad = combo.length;
   for (i = 0; i < cantidad; i++) {
      if (combo[i].value == elemento) {
         combo[i].selected = true;
      }

   }
}





