$(function() {

    // just a super-simple JS demo

    var demoHeaderBox;
    if ($('#btngetmenu').length !== 0) {

    $('#btngetmenu').on('click', function()
    {
        alert("Entro");
        
    }
}
    // simple demo to show create something via javascript on the page
   if ($('#btn_Add_Genero').length !== 0) {

    $('#btn_Add_Genero').on('click', function(){
        var Nombre;
        Nombre = $("#TxtNombreGenero").val();
      


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
        });
}

if ($('#Btn-RegistrarTipoN').length !== 0) {

    $('#Btn-RegistrarTipoN').on('click', function(){
        var idTipo_notario, tipo_notario, Estado;
        idTipo_notario = $("#TxtCodigoTN").val();
        tipo_notario = $("#TxtNombreTipoNotario").val();
        Estado = $("#TxtEstadoTipoNotario").val();
      


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            // "url" is defined in views/_templates/footer.php
            $.ajax({
                type: "POST",
                url: url+"/tipoNotario/addTipoNotario",
                data: { "TxtCodigoTN": idTipo_notario, "TxtNombreTipoNotario": TxtNombreTipoNotario, "TxtEstadoTipoNotario":TxtEstadoTipoNotario}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
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
        });
}

if ($('#btn_Guardar').length !== 0) {

    $('#btn_Guardar').on('click', function(){
        var NombreNotario,FechaInicio,FechaFin,NombreNotaria,Estado,TipoNotario;
        NombreNotario = $("#TxtNombreNotario").val();
        FechaInicio = $("#TxtFechaInicio").val();
        FechaFin = $("#TxtFechaFin").val();
        NombreNotaria = $("#TxtNombreNotaria").val();
        Estado = $("#TxtEstado").val();
        TipoNotario = $("#TxtTipoNotario").val();


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            // "url" is defined in views/_templates/footer.php
            $.ajax({
                type: "POST",
                url: url+"/Notario/addNotario",
                data: { "TxtNombreNotario": NombreNotario,"TxtFechaInicio": FechaInicio,"TxtFechaFin": FechaFin,"TxtNombreNotaria": NombreNotaria,"TxtEstado": Estado,"TxtTipoNotario": TipoNotario}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);


                    $("#TxtNombreNotario").val();
                    $("#TxtFechaInicio").val();
                    $("#TxtFechaFin").val();
                    $("#TxtNombreNotaria").val();
                    $("#TxtEstado").val();
                    $("#TxtTipoNotario").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not
                });
        });
}

if ($('#btn_Guardar').length !== 0) {

    $('#btn_Guardar').on('click', function(){
        var NombreParagrafo,Descripcion;
        NombreParagrafo = $("#TxtNombreParagrafo").val();
        Descripcion = $("#TxtDescripcion").val();


            // send an ajax-request to this URL: current-server.com/songs/ajaxGetStats
            // "url" is defined in views/_templates/footer.php
            $.ajax({
                type: "POST",
                url: url+"/paragrafo/addParagrafo",
                data: { "TxtNombreParagrafo": TxtNombreParagrafo,"TxtDescripcion": Descripcion}
            })
            .done(function(result) {
                    // this will be executed if the ajax-call was successful
                    // here we get the feedback from the ajax-call (result) and show it in #javascript-ajax-result-box
                    
                    
                    alert(result);
                    Console.log(result);


                    $("#TxtNombreParagrafo").val();
                    $("#TxtDescripcion").val();
                    

                })
            .fail(function() {
                    // this will be executed if the ajax-call had failed
                })
            .always(function() {
                    // this will ALWAYS be executed, regardless if the ajax-call was success or not
                });
        });
}




});