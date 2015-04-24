-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2015 a las 16:09:39
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mydb`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarEstadoCivil`(IN `id` INT, IN `nombre` VARCHAR(15))
    NO SQL
Begin
Update tbl_estadocivil
set Nombre=nombre
where IdEstado_Civil=id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarGenero`(IN `Id_Genero` INT(11), IN `NombreGen` VARCHAR(15))
    DETERMINISTIC
begin 

update tbl_genero set Nombre= NombreGen
where IdGenero = Id_Genero ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarLe`(IN `Descripcion` VARCHAR(35), IN `Estado` VARCHAR(35), IN `Nombre` VARCHAR(35), IN `IdLegislacion` INT)
update tbl_legislacion set
Nombre = Nombre, Descripcion = Descripcion, Estado = Estado
where IdLegislacion = IdLegislacion$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarNotario`(IN `Id` INT, IN `nombre` VARCHAR(50), IN `fechaInicio` VARCHAR(20), IN `fechaFin` VARCHAR(20), IN `nombreNotaria` VARCHAR(45), IN `estado` INT, IN `tipoNotario` INT)
    NO SQL
begin
Update tbl_notario
Set Nombre=nombre,
	FechaInicio=fechaInicio,
    FechaFin=fechaFin,
    NombreNotaria=nombreNotaria,
    Estado=estado,
    Tipo_notario_idTipo_notario=tipoNotario
Where IdNotario=Id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarParagrafo`(IN `Id` INT, IN `nombre` VARCHAR(20), IN `descripcion` VARCHAR(400))
    NO SQL
begin
update tbl_paragrafo
set Nombre=nombre,
	Descripcion=descripcion
where idParagrafo=Id;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarProce`(IN `IdProceso` INT, IN `Descripcion` VARCHAR(50), IN `Nombre` VARCHAR(15), IN `Estado` INT)
begin

update tbl_proceso set
Descripcion = Descripcion, Nombre = Nombre, Estado = Estado
where IdProceso = IdProceso;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarRe`(IN `NombreDocumento` VARCHAR(35), IN `Opcional` INT, IN `IdRequisito` INT)
update tbl_requisito set
NombreDocumento = NombreDocumento, Opcional = Opcional
where IdRequisito = IdRequisito$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarTCliente`(IN `Nombre` VARCHAR(45), IN `Estado` INT)
update tbl_tipo_cliente set
Nombre = Nombre, Estado = Estado
where IdTipoCliente = IdTipoCliente$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarTEmpleado`(IN `NivelAcceso` INT, IN `Nombre` VARCHAR(15), IN `Estado` INT)
update tbl_tipoempleado set
NivelAcceso = NivelAcceso,Nombre=Nombre, Estado = Estado
where IdTipo_Empleado = IdTipo_Empleado$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarTipoDocumento`(IN `IdTipoDocumentoTD` INT(15), IN `Descripcion` VARCHAR(15))
begin 

update tbl_tipodocumento set Descripcion = DescripcionTD

where IdTipoDocumento = IdTipoDocumento;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpActualizarTipoNotario`(IN `IdTipo_notarioTN` INT(15), IN `tipo_notarioTN` VARCHAR(15), IN `Estado` VARCHAR(20))
begin 

update tipo_notario set tipo_notario = tipo_notarioTN
, Estado = EstadoTN

where IdTipo_notario = IdTipo_notarioTN;


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarEstadoCivil`(IN `id` INT)
    NO SQL
begin
Select IdEstado_Civil,Nombre From tbl_estadocivil where IdEstado_Civil=id ;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarGenero`(IN `IdGenero` INT, IN `Nombre` VARCHAR(15))
begin

Select * from tbl_proceso where IdGenero = IdGenero;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarLegislacion`(IN `Nombre` VARCHAR(30), IN `Descripcion` VARCHAR(400), IN `Estado` VARCHAR(35))
begin
select IdLegislacion,Nombre,Descripcion,Estado from tbl_legislacion where IdLegislacion=id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarNotario`(IN `id` INT)
    NO SQL
begin
select IdNotario,Nombre,FechaInicio,FechaFin,NombreNotaria,Estado,Tipo_notario_idTipo_notario from tbl_notario where IdNotario=id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarParagrafo`(IN `id` INT)
    NO SQL
begin
select IdParagrafo,Nombre,Descripcion from tbl_paragrafo where IdParagrafo=id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarProceso`(IN `IdProceso` INT, IN `Descripcion` VARCHAR(200), IN `Nombre` VARCHAR(20), IN `Estado` INT(15))
    NO SQL
begin

Select * from tbl_proceso where IdProceso = IdProceso;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarRequisitos`(IN `NombreDocumento` INT, IN `Opcional` INT)
    NO SQL
begin
select IdRequisito,NombreDocumento,Opcional from tbl_requisito where IdRequisito=id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarTCliente`(IN `Nombre` VARCHAR(45), IN `Estado` INT)
    NO SQL
begin
select IdTipoCliente,Nombre,Estado from tbl_tipo_cliente where IdTipoCliente=id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarTEmpleado`(IN `NivelAcceso` INT, IN `Nombre` VARCHAR(15), IN `Estado` INT)
begin
select IdTipo_Empleado,Nombre,Descripcion from tbl_paragrafo where IdTipo_Empleado=id ;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultartipoDocumento`(IN `IdTipoDocumentoSp` INT(15), IN `DescripcionTd` INT(15))
    NO SQL
begin

Select * from tbl_tipodocumento where IdTipoDocumentoSp = IdTipoDocumento;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpConsultarTipoNotario`(IN `idTipo_NotarioTN` INT)
begin 

select * from tipo_notario where idTipo_Notario = idTipo_NotarioTN;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarEstadoCivil`(IN `id` INT)
    NO SQL
Begin
Delete from tbl_estadocivil where IdEstado_Civil=id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarGenero`(IN `Id_Genero` INT(11))
begin 
delete from tbl_genero where IdGenero=Id_Genero;

end$$

CREATE DEFINER=`root`@`localhots` PROCEDURE `SpEliminarLe`(IN `IdLegislacion` INT)
begin 
delete from tbl_legislacion where IdLegislacion=IdLegislacion;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarNotario`(IN `id` INT)
    NO SQL
Begin
Delete from tbl_notario where IdNotario=id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarParagrafo`(IN `id` INT)
    NO SQL
Begin
Delete from tbl_paragrafo where IdParagrafo=id;
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarProceso`(IN `IdProceso` INT)
    NO SQL
begin 
delete from tbl_proceso where IdProceso=IdProceso;

end$$

CREATE DEFINER=`root`@`loscalhots` PROCEDURE `SpEliminarRe`(IN `IdRequisito` INT)
begin 
delete from tbl_requisito where IdRequisito=IdRequisito;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarTCliente`(IN `IdTipoCliente` INT)
begin 
delete from tbl_tipo_cliente where IdTipoCliente=IdTipoCliente;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarTEmpleado`(IN `IdTipo_Empleado` INT)
begin 
delete from tbl_tipoempleado where IdTipo_Empleado = IdTipo_Empleado;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarTipoDocumento`(IN `IdTipoDocumentoTD` INT(15))
begin
delete from tbl_tipodocumento where IdTipoDocumento = IdTipoDocumentoTD;

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpEliminarTipoNotario`(IN `idTipo_notario` INT)
    NO SQL
begin 
delete from tipo_notario where idTipo_notario = idTipo_notario;

end$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpGetMenu`(IN `_rol` INT)
select innerHTML from tbl_menu where idobjeto in (select idmenu from tbl_menurol where idrol = _rol)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarEstadoCivil`(IN `Id` INT, IN `nombre` VARCHAR(15))
    NO SQL
Begin
insert into tbl_estadocivil(IdEstado_Civil,Nombre) values(Id,nombre);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarGenero`(IN `Nombre` VARCHAR(15))
begin 
 
insert into tbl_genero (Nombre)values (Nombre);


end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarLegislacion`(IN `Nombre` VARCHAR(35), IN `Descripcion` VARCHAR(35), IN `Estado` INT)
    NO SQL
BEGIN
	INSERT INTO tbl_legislacion (Nombre,Descripcion,Estado) VALUES (Nombre,Descripcion,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarNotario`(IN `Nombre` VARCHAR(50), IN `FechaInicio` VARCHAR(20), IN `FechaFin` VARCHAR(20), IN `NombreNotaria` VARCHAR(45), IN `Estado` INT, IN `Tipo_notario_idTipo_notario` INT)
    NO SQL
Begin
insert into tbl_notario(Nombre,FechaInicio,FechaFin,NombreNotaria,Estado,Tipo_notario_idTipo_notario) values(Nombre,FechaInicio,FechaFin,NombreNotaria,Estado,Tipo_notario_idTipo_notario);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarParagrafo`(IN `nombre` VARCHAR(40), IN `descripcion` VARCHAR(40))
    NO SQL
Begin
Insert into tbl_paragrafo(Nombre,Descripcion) values(nombre,descripcion);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarProseso`(IN `Descripcion` VARCHAR(200), IN `Nombre` VARCHAR(20), IN `Estado` INT(11))
begin
insert into tbl_proceso(Descripcion,Nombre, Estado ) values ( Descripcion,Nombre,Estado);

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarRequisito`(IN `NombreDocumento` VARCHAR(35), IN `Opcional` VARCHAR(35))
    NO SQL
BEGIN
	INSERT INTO tbl_requisito (NombreDocumento,	Opcional) VALUES (NombreDocumento,	Opcional);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarTCliente`(IN `IdTipoCliente` INT, IN `Nombre` VARCHAR(15), IN `Estado` INT)
BEGIN
	INSERT INTO tbl_tipo_cliente (IdTipoCliente,Nombre,Estado) VALUES (IdTipoCliente,Nombre,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarTEmpleado`(IN `NivelAcceso` INT, IN `Nombre` VARCHAR(15), IN `Estado` INT)
BEGIN
	INSERT INTO tbl_tipoempleado (NivelAcceso,Nombre,Estado) VALUES (NivelAcceso,Nombre,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarTipoDocumento`(IN `Descripcion` VARCHAR(15))
begin
insert into tbl_tipodocumento(Descripcion) values (Descripcion);

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarTipoNotario`(IN `idTipo_notario` INT(11), IN `tipo_notario` VARCHAR(15), IN `Estado` VARCHAR(20))
begin

insert into tipo_notario(idTipo_notario,tipo_notario,Estado) values (idTipo_notario,tipo_notario,Estado);

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListaNotario`()
SELECT n.IdNotario, n.Nombre,n.FechaInicio,n.FechaFin,n.NombreNotaria,n.Estado, n.Tipo_notario_idTipo_notario,tn.tipo_notario as tipo FROM tbl_notario n join tipo_notario tn on n.Tipo_notario_idTipo_notario= tn.idTipo_notario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarBitacora`()
SELECT `IdBitacora`, `Fk_Escritura`, `Fecha_Bitacora`, `tbl_escritura_IdEscritura` FROM `tbl_bitacora`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarClausulas`()
SELECT `IdClausula`, `Nombre`, `Descripcion`, `FK_Paragrafo`, `tbl_paragrafo_IdParagrafo` FROM `tbl_clausula`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarCliente`()
SELECT `CC`, `Fk_TipoDocumento`, `Nombre`, `Apellido`, `Fk_Genero`, `Telefono`, `Fk_EstadoCivil`, `tbl_estadocivil_IdEstado_Civil`, `tbl_tipodocumento_IdDocumento`, `tbl_genero_IdGenero`, `tbl_tipo_cliente_IdTipoCliente` FROM `tbl_cliente`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarDetalleBitacora`()
SELECT `IdDetalla`, `Fk_Preceso`, `Fk_Escritura`, `Fk_Bitacora`, `Observacio`, `FechaLimite`, `tbl_proceso_IdProceso`, `tbl_bitacora_IdBitacora` FROM `tbl_detalle_bitacora`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarEmpleado`()
SELECT `CC`, `Nombre`, `Apellido`, `Telefono`, `FK_Genero`, `FK_TipoEmpleado`, `Estado`, `tbl_genero_IdGenero`, `tbl_tipoempleado_IdTipo_Usuario`, `Contrasenia` FROM `tbl_empleado`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarEscritura`()
    NO SQL
SELECT `IdEscritura`, `Descripcion`, `Fk_Plantilla`, `Fk_Cliente`, `Fk_Empleado`, `Estado`, `tbl_plantilla_IdPlantilla`, `tbl_tipoescritura_IdTipo_Escritura`, `tbl_notario_IdNotario` FROM `tbl_escritura`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarEscrituraCliente`()
SELECT `IdEscritura_Cliente`, `tbl_cliente_CC`, `tbl_escritura_IdEscritura` FROM `tbl_escritura_cliente`$$

CREATE DEFINER=`localhots`@`root` PROCEDURE `SpListarEscriturahasEmpleado`()
    NO SQL
SELECT `tbl_empleado_CC`, `tbl_escritura_IdEscritura` FROM `tbl_escritura_has_tbl_empleado`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarEscrituraRequisitos`()
SELECT `IdTipo_Escritura_Requisito`, `FK_Requisito`, `FK_Escritura`, `tbl_requisito_IdRequisito`, `tbl_escritura_IdEscritura` FROM `tbl_escritura_requisito`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarEstadocivil`()
SELECT `IdEstado_Civil`, `Nombre` FROM `tbl_estadocivil`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarGenero`()
SELECT `IdGenero`, `Nombre` FROM `tbl_genero`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarLegislacion`()
SELECT `IdLegislacion`, `Nombre`, `Descripcion`, `Estado` FROM `tbl_legislacion`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarNotario`()
SELECT idTipo_notario,tipo_notario FROM tipo_notario$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarParagrafos`()
    NO SQL
SELECT `IdParagrafo`, `Nombre`, `Descripcion` FROM `tbl_paragrafo`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarPlantilla`()
SELECT `IdPlantilla`, `Descripcion`, `Nombre`, `Url_Plantilla`, `Estado`, `Version`, `FK_TipoEscritura`, `tbl_tipoescritura_IdTipo_Escritura` FROM `tbl_plantilla`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarProceso`()
SELECT `IdProceso`, `Descripcion`, `Nombre`, `Estado` FROM `tbl_proceso`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarRequisitos`()
    NO SQL
SELECT `IdRequisito`, `NombreDocumento`, `Opcional` FROM `tbl_requisito`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarRol`(IN `IdEmp` INT)
select r.id_rol, e.Nombre from tbl_empleadorol r inner join tbl_tipoempleado e on (r.id_rol = e.idtipo_usuario) where r.id_empleado = IdEmp$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarTipoCliente`()
SELECT `IdTipoCliente`, `Nombre`, `Estado` FROM `tbl_tipo_cliente`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarTipoDocumento`()
SELECT `IdTipoDocumento`, `Nombre`, `Sufijo` FROM `tbl_tipodocumento`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarTipoEmplado`()
SELECT `IdTipo_Empleado`, `NivelAcceso`, `Nombre`, `Estado` FROM `tbl_tipoempleado`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpListarTipoEmpleado`()
    NO SQL
SELECT `IdTipo_Empleado`, `NivelAcceso`, `Nombre`, `Estado` FROM `tbl_tipoempleado`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarTipoEscritura`()
SELECT `IdTipo_Escritura`, `Nombre`, `FK_Clausula`, `tbl_clausula_IdClausula` FROM `tbl_tipoescritura`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarTipoescrituraLegislaion`()
SELECT `IdTipoEscritura_Legislacion`, `FK_Legislacion`, `FK_TipoEscritura`, `tbl_legislacion_IdLegislacion`, `tbl_tipoescritura_IdTipo_Escritura` FROM `tbl_tipoescritura_legislacion`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarTipoNotario`()
SELECT `idTipo_notario`, `tipo notario`, `Estado` FROM `tipo_notario`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpLogin`(IN `_user` VARCHAR(20), IN `_pass` VARCHAR(20))
SELECT * FROM tbl_empleado WHERE CC = _user AND pass = _pass$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpRegistrarPlantilla`(IN `_desc` VARCHAR(200), IN `_nombre` VARCHAR(20), IN `_url` VARCHAR(45), IN `_version` INT, IN `fk` INT)
INSERT INTO `tbl_plantilla`(`Descripcion`, `Nombre`, `Url_Plantilla`, `Estado`, `Version`, `FK_TipoEscritura`, `tbl_tipoescritura_IdTipo_Escritura`) VALUES (_desc,_nombre,_url,1,_version,fk,fk)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpRestablecer`(IN `_correo` VARCHAR(50))
SELECT pass FROM tbl_empleado where correo = _correo$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_bitacora`
--

CREATE TABLE IF NOT EXISTS `tbl_bitacora` (
`IdBitacora` int(11) NOT NULL,
  `Fecha_Bitacora` datetime DEFAULT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clausula`
--

CREATE TABLE IF NOT EXISTS `tbl_clausula` (
`IdClausula` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_paragrafo_IdParagrafo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_cliente` (
`Numero_Documento` int(11) NOT NULL,
  `Nombre1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nombre2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_estadocivil_IdEstado_Civil` int(11) NOT NULL,
  `tbl_tipodocumento_IdDocumento` int(11) NOT NULL,
  `tbl_genero_IdGenero` int(11) NOT NULL,
  `tbl_tipo_cliente_IdTipoCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_detalle_bitacora`
--

CREATE TABLE IF NOT EXISTS `tbl_detalle_bitacora` (
`IdDetalle` int(11) NOT NULL,
  `Observacion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaLimite` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_proceso_IdProceso` int(11) NOT NULL,
  `tbl_bitacora_IdBitacora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE IF NOT EXISTS `tbl_empleado` (
`Numero_Documento` int(11) NOT NULL,
  `Nombre1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nombre2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `tbl_genero_IdGenero` int(11) NOT NULL,
  `tbl_tipoempleado_IdTipo_Usuario` int(11) NOT NULL,
  `tbl_tipodocumento_IdTipoDocumento` int(11) NOT NULL,
  `pass` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `correo` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleadorol`
--

CREATE TABLE IF NOT EXISTS `tbl_empleadorol` (
  `id_empleado` int(11) DEFAULT NULL,
  `id_rol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_empleadorol`
--

INSERT INTO `tbl_empleadorol` (`id_empleado`, `id_rol`) VALUES
(123, 1),
(123, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escritura`
--

CREATE TABLE IF NOT EXISTS `tbl_escritura` (
`IdEscritura` int(11) NOT NULL,
  `Descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `tbl_plantilla_IdPlantilla` int(11) NOT NULL,
  `tbl_tipoescritura_IdTipo_Escritura` int(11) NOT NULL,
  `tbl_notario_IdNotario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escritura_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_escritura_cliente` (
`Id_Escritura_Cliente` int(11) NOT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL,
  `tbl_cliente_Numero_Documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escritura_has_tbl_empleado`
--

CREATE TABLE IF NOT EXISTS `tbl_escritura_has_tbl_empleado` (
`Id_Escritura_Empleado` int(11) NOT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL,
  `tbl_empleado_Numero_Documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escritura_requisito`
--

CREATE TABLE IF NOT EXISTS `tbl_escritura_requisito` (
`Id_Escritura_Requisito` int(11) NOT NULL,
  `tbl_requisito_IdRequisito` int(11) NOT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estadocivil`
--

CREATE TABLE IF NOT EXISTS `tbl_estadocivil` (
`IdEstado_Civil` int(11) NOT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_genero`
--

CREATE TABLE IF NOT EXISTS `tbl_genero` (
`IdGenero` int(11) NOT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_legislacion`
--

CREATE TABLE IF NOT EXISTS `tbl_legislacion` (
`IdLegislacion` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menu`
--

CREATE TABLE IF NOT EXISTS `tbl_menu` (
  `IdObjeto` int(11) DEFAULT NULL,
  `innerHTML` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_menu`
--

INSERT INTO `tbl_menu` (`IdObjeto`, `innerHTML`) VALUES
(1, '<li class="dropdown open">\r\n                      <a aria-expanded="true" href="http://fezvrasta.github.io/bootstrap-material-design/bootstrap-elements.html" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Escritura<b class="caret"></b><div class="ripple-wrapper"></div></a>\r\n                      <ul class="dropdown-menu">\r\n                        <li><a href="javascript:void(0)" data-toggle="modal" data-target="#complete-dialog">Crear Escritura<div class="ripple-wrapper"></div></a></li>\r\n                        <li><a href="javascript:void(0)" data-toggle="modal" data-target="#paragrafo-dialog">Agregar parágrafo<div class="ripple-wrapper"></div></a></li>\r\n                        <li><a href="javascript:void(0)" data-toggle="modal" data-target="#legislacion-dialog">Agregar Legislación</a></li>\r\n                      </ul>\r\n                    </li>'),
(2, '<li><a href="javascript:void(0)">Cliente<div class="ripple-wrapper"></div></a></li>'),
(3, '      <li><a href="javascript:void(0)">Otro<div class="ripple-wrapper"></div></a></li>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_menurol`
--

CREATE TABLE IF NOT EXISTS `tbl_menurol` (
  `IdMenu` int(11) DEFAULT NULL,
  `IdRol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_menurol`
--

INSERT INTO `tbl_menurol` (`IdMenu`, `IdRol`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_notario`
--

CREATE TABLE IF NOT EXISTS `tbl_notario` (
`IdNotario` int(11) NOT NULL,
  `Nombre` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaInicio` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaFin` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NombreNotaria` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `Tipo_notario_idTipo_notario` int(11) NOT NULL,
  `Correo` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paragrafo`
--

CREATE TABLE IF NOT EXISTS `tbl_paragrafo` (
`IdParagrafo` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_plantilla`
--

CREATE TABLE IF NOT EXISTS `tbl_plantilla` (
`IdPlantilla` int(11) NOT NULL,
  `Descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url_Plantilla` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `Version` int(11) DEFAULT NULL,
  `tbl_tipoescritura_IdTipo_Escritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proceso`
--

CREATE TABLE IF NOT EXISTS `tbl_proceso` (
`IdProceso` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_requisito`
--

CREATE TABLE IF NOT EXISTS `tbl_requisito` (
`IdRequisito` int(11) NOT NULL,
  `NombreRequisito` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Opcional` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `tbl_tipodocumento` (
`IdTipoDocumento` int(11) NOT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sufijo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoempleado`
--

CREATE TABLE IF NOT EXISTS `tbl_tipoempleado` (
`IdTipo_Usuario` int(11) NOT NULL,
  `NivelAcceso` int(11) DEFAULT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `menu` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoescritura`
--

CREATE TABLE IF NOT EXISTS `tbl_tipoescritura` (
`IdTipo_Escritura` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_clausula_IdClausula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoescritura_legislacion`
--

CREATE TABLE IF NOT EXISTS `tbl_tipoescritura_legislacion` (
`IdTipoEscritura_Legislacion` int(11) NOT NULL,
  `tbl_legislacion_IdLegislacion` int(11) NOT NULL,
  `tbl_tipoescritura_IdTipo_Escritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_cliente` (
`IdTipoCliente` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_notario`
--

CREATE TABLE IF NOT EXISTS `tipo_notario` (
`idTipo_notario` int(11) NOT NULL,
  `tipo notario` varchar(45) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
 ADD PRIMARY KEY (`IdBitacora`), ADD KEY `fk_tbl_bitacora_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`);

--
-- Indices de la tabla `tbl_clausula`
--
ALTER TABLE `tbl_clausula`
 ADD PRIMARY KEY (`IdClausula`), ADD KEY `fk_tbl_clausula_tbl_paragrafo1_idx` (`tbl_paragrafo_IdParagrafo`);

--
-- Indices de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
 ADD PRIMARY KEY (`Numero_Documento`), ADD KEY `fk_tbl_cliente_tbl_estadocivil1_idx` (`tbl_estadocivil_IdEstado_Civil`), ADD KEY `fk_tbl_cliente_tbl_tipodocumento1_idx` (`tbl_tipodocumento_IdDocumento`), ADD KEY `fk_tbl_cliente_tbl_genero1_idx` (`tbl_genero_IdGenero`), ADD KEY `fk_tbl_cliente_tbl_tipo_cliente1_idx` (`tbl_tipo_cliente_IdTipoCliente`);

--
-- Indices de la tabla `tbl_detalle_bitacora`
--
ALTER TABLE `tbl_detalle_bitacora`
 ADD PRIMARY KEY (`IdDetalle`), ADD KEY `fk_tbl_detalle_bitacora_tbl_proceso1_idx` (`tbl_proceso_IdProceso`), ADD KEY `fk_tbl_detalle_bitacora_tbl_bitacora1_idx` (`tbl_bitacora_IdBitacora`);

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
 ADD PRIMARY KEY (`Numero_Documento`), ADD KEY `fk_tbl_empleado_tbl_genero1_idx` (`tbl_genero_IdGenero`), ADD KEY `fk_tbl_empleado_tbl_tipoempleado1_idx` (`tbl_tipoempleado_IdTipo_Usuario`), ADD KEY `fk_tbl_empleado_tbl_tipodocumento1_idx` (`tbl_tipodocumento_IdTipoDocumento`);

--
-- Indices de la tabla `tbl_escritura`
--
ALTER TABLE `tbl_escritura`
 ADD PRIMARY KEY (`IdEscritura`), ADD KEY `fk_tbl_escritura_tbl_plantilla1_idx` (`tbl_plantilla_IdPlantilla`), ADD KEY `fk_tbl_escritura_tbl_tipoescritura1_idx` (`tbl_tipoescritura_IdTipo_Escritura`), ADD KEY `fk_tbl_escritura_tbl_notario1_idx` (`tbl_notario_IdNotario`);

--
-- Indices de la tabla `tbl_escritura_cliente`
--
ALTER TABLE `tbl_escritura_cliente`
 ADD PRIMARY KEY (`Id_Escritura_Cliente`), ADD KEY `fk_tbl_escritura_cliente_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`), ADD KEY `fk_tbl_escritura_cliente_tbl_cliente1_idx` (`tbl_cliente_Numero_Documento`);

--
-- Indices de la tabla `tbl_escritura_has_tbl_empleado`
--
ALTER TABLE `tbl_escritura_has_tbl_empleado`
 ADD PRIMARY KEY (`Id_Escritura_Empleado`), ADD KEY `fk_tbl_escritura_has_tbl_empleado_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`), ADD KEY `fk_tbl_escritura_has_tbl_empleado_tbl_empleado1_idx` (`tbl_empleado_Numero_Documento`);

--
-- Indices de la tabla `tbl_escritura_requisito`
--
ALTER TABLE `tbl_escritura_requisito`
 ADD PRIMARY KEY (`Id_Escritura_Requisito`), ADD KEY `fk_tbl_escritura_requisito_tbl_requisito1_idx` (`tbl_requisito_IdRequisito`), ADD KEY `fk_tbl_escritura_requisito_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`);

--
-- Indices de la tabla `tbl_estadocivil`
--
ALTER TABLE `tbl_estadocivil`
 ADD PRIMARY KEY (`IdEstado_Civil`);

--
-- Indices de la tabla `tbl_genero`
--
ALTER TABLE `tbl_genero`
 ADD PRIMARY KEY (`IdGenero`);

--
-- Indices de la tabla `tbl_legislacion`
--
ALTER TABLE `tbl_legislacion`
 ADD PRIMARY KEY (`IdLegislacion`);

--
-- Indices de la tabla `tbl_notario`
--
ALTER TABLE `tbl_notario`
 ADD PRIMARY KEY (`IdNotario`), ADD KEY `fk_tbl_notario_Tipo_notario1_idx` (`Tipo_notario_idTipo_notario`);

--
-- Indices de la tabla `tbl_paragrafo`
--
ALTER TABLE `tbl_paragrafo`
 ADD PRIMARY KEY (`IdParagrafo`);

--
-- Indices de la tabla `tbl_plantilla`
--
ALTER TABLE `tbl_plantilla`
 ADD PRIMARY KEY (`IdPlantilla`), ADD KEY `fk_tbl_plantilla_tbl_tipoescritura1_idx` (`tbl_tipoescritura_IdTipo_Escritura`);

--
-- Indices de la tabla `tbl_proceso`
--
ALTER TABLE `tbl_proceso`
 ADD PRIMARY KEY (`IdProceso`);

--
-- Indices de la tabla `tbl_requisito`
--
ALTER TABLE `tbl_requisito`
 ADD PRIMARY KEY (`IdRequisito`);

--
-- Indices de la tabla `tbl_tipodocumento`
--
ALTER TABLE `tbl_tipodocumento`
 ADD PRIMARY KEY (`IdTipoDocumento`);

--
-- Indices de la tabla `tbl_tipoempleado`
--
ALTER TABLE `tbl_tipoempleado`
 ADD PRIMARY KEY (`IdTipo_Usuario`);

--
-- Indices de la tabla `tbl_tipoescritura`
--
ALTER TABLE `tbl_tipoescritura`
 ADD PRIMARY KEY (`IdTipo_Escritura`), ADD KEY `fk_tbl_tipoescritura_tbl_clausula1_idx` (`tbl_clausula_IdClausula`);

--
-- Indices de la tabla `tbl_tipoescritura_legislacion`
--
ALTER TABLE `tbl_tipoescritura_legislacion`
 ADD PRIMARY KEY (`IdTipoEscritura_Legislacion`), ADD KEY `fk_tbl_tipoEscritura_legislacion_tbl_legislacion1_idx` (`tbl_legislacion_IdLegislacion`), ADD KEY `fk_tbl_tipoEscritura_legislacion_tbl_tipoescritura1_idx` (`tbl_tipoescritura_IdTipo_Escritura`);

--
-- Indices de la tabla `tbl_tipo_cliente`
--
ALTER TABLE `tbl_tipo_cliente`
 ADD PRIMARY KEY (`IdTipoCliente`);

--
-- Indices de la tabla `tipo_notario`
--
ALTER TABLE `tipo_notario`
 ADD PRIMARY KEY (`idTipo_notario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
MODIFY `IdBitacora` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_clausula`
--
ALTER TABLE `tbl_clausula`
MODIFY `IdClausula` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
MODIFY `Numero_Documento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_detalle_bitacora`
--
ALTER TABLE `tbl_detalle_bitacora`
MODIFY `IdDetalle` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
MODIFY `Numero_Documento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_escritura`
--
ALTER TABLE `tbl_escritura`
MODIFY `IdEscritura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_escritura_cliente`
--
ALTER TABLE `tbl_escritura_cliente`
MODIFY `Id_Escritura_Cliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_escritura_has_tbl_empleado`
--
ALTER TABLE `tbl_escritura_has_tbl_empleado`
MODIFY `Id_Escritura_Empleado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_escritura_requisito`
--
ALTER TABLE `tbl_escritura_requisito`
MODIFY `Id_Escritura_Requisito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_estadocivil`
--
ALTER TABLE `tbl_estadocivil`
MODIFY `IdEstado_Civil` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_genero`
--
ALTER TABLE `tbl_genero`
MODIFY `IdGenero` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_legislacion`
--
ALTER TABLE `tbl_legislacion`
MODIFY `IdLegislacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_notario`
--
ALTER TABLE `tbl_notario`
MODIFY `IdNotario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_paragrafo`
--
ALTER TABLE `tbl_paragrafo`
MODIFY `IdParagrafo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_plantilla`
--
ALTER TABLE `tbl_plantilla`
MODIFY `IdPlantilla` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_proceso`
--
ALTER TABLE `tbl_proceso`
MODIFY `IdProceso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_requisito`
--
ALTER TABLE `tbl_requisito`
MODIFY `IdRequisito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipodocumento`
--
ALTER TABLE `tbl_tipodocumento`
MODIFY `IdTipoDocumento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipoempleado`
--
ALTER TABLE `tbl_tipoempleado`
MODIFY `IdTipo_Usuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipoescritura`
--
ALTER TABLE `tbl_tipoescritura`
MODIFY `IdTipo_Escritura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipoescritura_legislacion`
--
ALTER TABLE `tbl_tipoescritura_legislacion`
MODIFY `IdTipoEscritura_Legislacion` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_cliente`
--
ALTER TABLE `tbl_tipo_cliente`
MODIFY `IdTipoCliente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo_notario`
--
ALTER TABLE `tipo_notario`
MODIFY `idTipo_notario` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_bitacora`
--
ALTER TABLE `tbl_bitacora`
ADD CONSTRAINT `fk_tbl_bitacora_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_clausula`
--
ALTER TABLE `tbl_clausula`
ADD CONSTRAINT `fk_tbl_clausula_tbl_paragrafo1` FOREIGN KEY (`tbl_paragrafo_IdParagrafo`) REFERENCES `tbl_paragrafo` (`IdParagrafo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_cliente`
--
ALTER TABLE `tbl_cliente`
ADD CONSTRAINT `fk_tbl_cliente_tbl_estadocivil1` FOREIGN KEY (`tbl_estadocivil_IdEstado_Civil`) REFERENCES `tbl_estadocivil` (`IdEstado_Civil`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_cliente_tbl_genero1` FOREIGN KEY (`tbl_genero_IdGenero`) REFERENCES `tbl_genero` (`IdGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_cliente_tbl_tipo_cliente1` FOREIGN KEY (`tbl_tipo_cliente_IdTipoCliente`) REFERENCES `tbl_tipo_cliente` (`IdTipoCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_cliente_tbl_tipodocumento1` FOREIGN KEY (`tbl_tipodocumento_IdDocumento`) REFERENCES `tbl_tipodocumento` (`IdTipoDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_detalle_bitacora`
--
ALTER TABLE `tbl_detalle_bitacora`
ADD CONSTRAINT `fk_tbl_detalle_bitacora_tbl_bitacora1` FOREIGN KEY (`tbl_bitacora_IdBitacora`) REFERENCES `tbl_bitacora` (`IdBitacora`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_detalle_bitacora_tbl_proceso1` FOREIGN KEY (`tbl_proceso_IdProceso`) REFERENCES `tbl_proceso` (`IdProceso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
ADD CONSTRAINT `fk_tbl_empleado_tbl_genero1` FOREIGN KEY (`tbl_genero_IdGenero`) REFERENCES `tbl_genero` (`IdGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_empleado_tbl_tipodocumento1` FOREIGN KEY (`tbl_tipodocumento_IdTipoDocumento`) REFERENCES `tbl_tipodocumento` (`IdTipoDocumento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_empleado_tbl_tipoempleado1` FOREIGN KEY (`tbl_tipoempleado_IdTipo_Usuario`) REFERENCES `tbl_tipoempleado` (`IdTipo_Usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_escritura`
--
ALTER TABLE `tbl_escritura`
ADD CONSTRAINT `fk_tbl_escritura_tbl_notario1` FOREIGN KEY (`tbl_notario_IdNotario`) REFERENCES `tbl_notario` (`IdNotario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_tbl_plantilla1` FOREIGN KEY (`tbl_plantilla_IdPlantilla`) REFERENCES `tbl_plantilla` (`IdPlantilla`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_tbl_tipoescritura1` FOREIGN KEY (`tbl_tipoescritura_IdTipo_Escritura`) REFERENCES `tbl_tipoescritura` (`IdTipo_Escritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_escritura_cliente`
--
ALTER TABLE `tbl_escritura_cliente`
ADD CONSTRAINT `fk_tbl_escritura_cliente_tbl_cliente1` FOREIGN KEY (`tbl_cliente_Numero_Documento`) REFERENCES `tbl_cliente` (`Numero_Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_cliente_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_escritura_has_tbl_empleado`
--
ALTER TABLE `tbl_escritura_has_tbl_empleado`
ADD CONSTRAINT `fk_tbl_escritura_has_tbl_empleado_tbl_empleado1` FOREIGN KEY (`tbl_empleado_Numero_Documento`) REFERENCES `tbl_empleado` (`Numero_Documento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_has_tbl_empleado_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_escritura_requisito`
--
ALTER TABLE `tbl_escritura_requisito`
ADD CONSTRAINT `fk_tbl_escritura_requisito_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_requisito_tbl_requisito1` FOREIGN KEY (`tbl_requisito_IdRequisito`) REFERENCES `tbl_requisito` (`IdRequisito`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_notario`
--
ALTER TABLE `tbl_notario`
ADD CONSTRAINT `fk_tbl_notario_Tipo_notario1` FOREIGN KEY (`Tipo_notario_idTipo_notario`) REFERENCES `tipo_notario` (`idTipo_notario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_plantilla`
--
ALTER TABLE `tbl_plantilla`
ADD CONSTRAINT `fk_tbl_plantilla_tbl_tipoescritura1` FOREIGN KEY (`tbl_tipoescritura_IdTipo_Escritura`) REFERENCES `tbl_tipoescritura` (`IdTipo_Escritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_tipoescritura`
--
ALTER TABLE `tbl_tipoescritura`
ADD CONSTRAINT `fk_tbl_tipoescritura_tbl_clausula1` FOREIGN KEY (`tbl_clausula_IdClausula`) REFERENCES `tbl_clausula` (`IdClausula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_tipoescritura_legislacion`
--
ALTER TABLE `tbl_tipoescritura_legislacion`
ADD CONSTRAINT `fk_tbl_tipoEscritura_legislacion_tbl_legislacion1` FOREIGN KEY (`tbl_legislacion_IdLegislacion`) REFERENCES `tbl_legislacion` (`IdLegislacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_tipoEscritura_legislacion_tbl_tipoescritura1` FOREIGN KEY (`tbl_tipoescritura_IdTipo_Escritura`) REFERENCES `tbl_tipoescritura` (`IdTipo_Escritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
