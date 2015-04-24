-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2015 a las 06:43:24
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mateo`
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

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpGuardarLegislacion`(IN `Nombre` VARCHAR(35), IN `Descripcion` VARCHAR(35), IN `Estado` INT)
    NO SQL
BEGIN
	INSERT INTO tbl_legislacion (Nombre,Descripcion,Estado) VALUES (Nombre,Descripcion,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpGuardarrequisito`(IN `NombreDocumento` VARCHAR(35), IN `Opcional` VARCHAR(35))
    NO SQL
BEGIN
	INSERT INTO tbl_requisito (NombreDocumento,	Opcional) VALUES (NombreDocumento,	Opcional);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpGuardarTCliente`(IN `IdTipoCliente` INT, IN `Nombre` VARCHAR(15), IN `Estado` INT)
BEGIN
	INSERT INTO tbl_tipo_cliente (IdTipoCliente,Nombre,Estado) VALUES (IdTipoCliente,Nombre,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpGuardarTEmpleado`(IN `NivelAcceso` INT, IN `Nombre` VARCHAR(15), IN `Estado` INT)
BEGIN
	INSERT INTO tbl_tipoempleado (NivelAcceso,Nombre,Estado) VALUES (NivelAcceso,Nombre,Estado);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarEstadoCivil`(IN `Id` INT, IN `nombre` VARCHAR(15))
    NO SQL
Begin
insert into tbl_estadocivil(IdEstado_Civil,Nombre) values(Id,nombre);
End$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarGenero`(IN `Nombre` VARCHAR(15))
begin 
 
insert into tbl_genero (Nombre)values (Nombre);


end$$

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

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarTipoDocumento`(IN `Descripcion` VARCHAR(15))
begin
insert into tbl_tipodocumento(Descripcion) values (Descripcion);

end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SpInsertarTipoNotario`(IN `idTipo_notario` INT(11), IN `tipo_notario` VARCHAR(15), IN `Estado` VARCHAR(20))
begin

insert into tipo_notario(idTipo_notario,tipo_notario,Estado) values (idTipo_notario,tipo_notario,Estado);

end$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListaNotario`()
SELECT `IdNotario`, `Nombre`, `FechaInicio`, `FechaFin`, `NombreNotaria`, `Estado`, `Tipo_notario_idTipo_notario` FROM `tbl_notario`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarBitacora`()
SELECT `IdBitacora`, `Fk_Escritura`, `Fecha_Bitacora`, `tbl_escritura_IdEscritura` FROM `tbl_bitacora`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarClausulas`()
SELECT `IdClausula`, `Nombre`, `Descripcion`, `FK_Paragrafo`, `tbl_paragrafo_IdParagrafo` FROM `tbl_clausula`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarCliente`()
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

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarEstadocivil`()
SELECT `IdEstado_Civil`, `Nombre` FROM `tbl_estadocivil`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarGenero`()
SELECT `IdGenero`, `Nombre` FROM `tbl_genero`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarLegislacion`()
SELECT `IdLegislacion`, `Nombre`, `Descripcion`, `Estado` FROM `tbl_legislacion`$$

CREATE DEFINER=`localhost`@`root` PROCEDURE `SpListarParagrafos`()
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
  `Fk_Escritura` int(11) DEFAULT NULL,
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
  `FK_Paragrafo` int(11) DEFAULT NULL,
  `tbl_paragrafo_IdParagrafo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_cliente` (
  `CC` int(11) NOT NULL,
  `Fk_TipoDocumento` int(11) DEFAULT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fk_Genero` int(11) DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fk_EstadoCivil` int(11) DEFAULT NULL,
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
`IdDetalla` int(11) NOT NULL,
  `Fk_Preceso` int(11) DEFAULT NULL,
  `Fk_Escritura` int(11) DEFAULT NULL,
  `Fk_Bitacora` int(11) DEFAULT NULL,
  `Observacio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FechaLimite` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_proceso_IdProceso` int(11) NOT NULL,
  `tbl_bitacora_IdBitacora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleado`
--

CREATE TABLE IF NOT EXISTS `tbl_empleado` (
  `CC` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Apellido` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_Genero` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_TipoEmpleado` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `tbl_genero_IdGenero` int(11) NOT NULL,
  `tbl_tipoempleado_IdTipo_Usuario` int(11) NOT NULL,
  `pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_empleado`
--

INSERT INTO `tbl_empleado` (`CC`, `Nombre`, `Apellido`, `Telefono`, `FK_Genero`, `FK_TipoEmpleado`, `Estado`, `tbl_genero_IdGenero`, `tbl_tipoempleado_IdTipo_Usuario`, `pass`, `correo`) VALUES
(1036, 'Andrea', 'Garces', '7777', '1', '1', 1, 1, 1, '1234', 'agarces143@misena.edu.co');

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
  `Fk_Plantilla` int(11) DEFAULT NULL,
  `Fk_Cliente` int(11) DEFAULT NULL,
  `Fk_Empleado` int(11) DEFAULT NULL,
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
  `IdEscritura_Cliente` int(11) NOT NULL,
  `tbl_cliente_CC` int(11) NOT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escritura_has_tbl_empleado`
--

CREATE TABLE IF NOT EXISTS `tbl_escritura_has_tbl_empleado` (
  `tbl_empleado_CC` int(11) NOT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_escritura_requisito`
--

CREATE TABLE IF NOT EXISTS `tbl_escritura_requisito` (
  `IdTipo_Escritura_Requisito` int(11) NOT NULL,
  `FK_Requisito` int(11) DEFAULT NULL,
  `FK_Escritura` int(11) DEFAULT NULL,
  `tbl_requisito_IdRequisito` int(11) NOT NULL,
  `tbl_escritura_IdEscritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estadocivil`
--

CREATE TABLE IF NOT EXISTS `tbl_estadocivil` (
`IdEstado_Civil` int(11) NOT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_estadocivil`
--

INSERT INTO `tbl_estadocivil` (`IdEstado_Civil`, `Nombre`) VALUES
(1, 'Casado'),
(2, 'casada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_genero`
--

CREATE TABLE IF NOT EXISTS `tbl_genero` (
`IdGenero` int(11) NOT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_genero`
--

INSERT INTO `tbl_genero` (`IdGenero`, `Nombre`) VALUES
(1, 'hhh'),
(2, 'Masculino'),
(3, 'Femenino'),
(4, 'aaaa'),
(5, 'a'),
(6, 'as'),
(7, 'as'),
(8, 'M'),
(9, 'a'),
(10, 'a'),
(11, 'Mike');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_legislacion`
--

CREATE TABLE IF NOT EXISTS `tbl_legislacion` (
`IdLegislacion` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` varchar(35) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_legislacion`
--

INSERT INTO `tbl_legislacion` (`IdLegislacion`, `Nombre`, `Descripcion`, `Estado`) VALUES
(1, 'DDD', 'OO', 'LLL'),
(2, 'DDD', 'OO', 'LLL'),
(3, NULL, NULL, NULL),
(4, 'a', 'a', '1'),
(6, 'a', 'a', '1'),
(7, 'a', 'a', '1'),
(8, 'a', 'a', '222'),
(9, '1', 'aaa', '0'),
(10, '1', 'a', '0'),
(11, '1', 'a', '0'),
(12, '1', 'a', '0'),
(13, '1', 'a', '0'),
(14, '333', 'a', '1'),
(15, '333', 'a', '1'),
(16, '333', 'a', '1'),
(17, '111', 'andrea', '0'),
(18, 'andrea', 'guayabal', '1'),
(19, 'andrea', 'guayabal', '1'),
(20, 'aa', 'aa', '1'),
(21, 'aaa', 'aaa', '1'),
(22, '', '', '0'),
(23, '', '', '0'),
(24, '', '', '0'),
(25, '', '', '0'),
(26, '', '', '0'),
(27, '', '', '0'),
(28, '', '', '0'),
(29, '', '', '0'),
(30, '', '', '0'),
(31, '', '', '0'),
(32, '', '', '0'),
(33, '', '', '0'),
(34, '', '', '0'),
(35, '', '', '0');

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
  `Tipo_notario_idTipo_notario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_notario`
--

INSERT INTO `tbl_notario` (`IdNotario`, `Nombre`, `FechaInicio`, `FechaFin`, `NombreNotaria`, `Estado`, `Tipo_notario_idTipo_notario`) VALUES
(3, 'Manuel', '06/02/2015', '06/10/2015', 'Notaria Octava de Medellin', 0, 1),
(5, 'Tati', '2015-04-07', '2015-04-24', 'Octava de MEdellin', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paragrafo`
--

CREATE TABLE IF NOT EXISTS `tbl_paragrafo` (
`IdParagrafo` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Descripcion` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_paragrafo`
--

INSERT INTO `tbl_paragrafo` (`IdParagrafo`, `Nombre`, `Descripcion`) VALUES
(1, 'holi', 'ftgvbjbnjkbn');

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
  `FK_TipoEscritura` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tbl_tipoescritura_IdTipo_Escritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proceso`
--

CREATE TABLE IF NOT EXISTS `tbl_proceso` (
`IdProceso` int(11) NOT NULL,
  `Descripcion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_proceso`
--

INSERT INTO `tbl_proceso` (`IdProceso`, `Descripcion`, `Nombre`, `Estado`) VALUES
(2, 'hola', 'Andrea', 1),
(3, 'jjjjj', 'aaa', 2),
(4, 'a', 'a', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_requisito`
--

CREATE TABLE IF NOT EXISTS `tbl_requisito` (
`IdRequisito` int(11) NOT NULL,
  `NombreDocumento` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Opcional` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_requisito`
--

INSERT INTO `tbl_requisito` (`IdRequisito`, `NombreDocumento`, `Opcional`) VALUES
(1, 'jdsdhfkjs', 1),
(2, 'dfgdfg', 0),
(3, 'dfgdfg', 0);

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
`IdTipo_Empleado` int(11) NOT NULL,
  `NivelAcceso` int(11) DEFAULT NULL,
  `Nombre` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  `menu` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tbl_tipoempleado`
--

INSERT INTO `tbl_tipoempleado` (`IdTipo_Empleado`, `NivelAcceso`, `Nombre`, `Estado`, `menu`) VALUES
(1, 0, '', 0, ''),
(2, 0, '', 0, ''),
(3, 0, '', 0, ''),
(4, 0, '', 0, ''),
(5, 0, '', 0, ''),
(6, 1, 'J', 2, ''),
(7, 0, '', 0, ''),
(8, 0, '', 0, ''),
(9, 0, '', 0, ''),
(10, 0, '', 0, ''),
(11, 0, '', 0, ''),
(12, 0, '', 0, ''),
(13, NULL, NULL, NULL, ''),
(14, 0, 'gdfg', 0, ''),
(15, 0, 'asd', 0, ''),
(16, 3, 'dd', 1, ''),
(17, 4, 'fr', 4, ''),
(18, 0, '', 0, ''),
(19, 0, '', 0, ''),
(20, 0, '', 0, ''),
(21, 0, '', 0, ''),
(22, 0, '', 0, ''),
(23, 0, '', 0, ''),
(24, 0, 'x', 0, ''),
(25, 0, '', 0, ''),
(26, 0, '', 0, ''),
(27, 0, '', 0, ''),
(28, 0, '', 0, ''),
(29, 1, 'dsf', 5, ''),
(30, 1, '', 0, ''),
(31, 0, '', 0, ''),
(32, 0, '', 0, ''),
(33, 0, '', 0, ''),
(34, 0, '', 0, ''),
(35, 0, '***', 0, ''),
(36, 0, 'ljn''''''''''''iju', 1, ''),
(37, 1, 'Ã±Ã±Ã±', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoescritura`
--

CREATE TABLE IF NOT EXISTS `tbl_tipoescritura` (
`IdTipo_Escritura` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FK_Clausula` int(11) DEFAULT NULL,
  `tbl_clausula_IdClausula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoescritura_legislacion`
--

CREATE TABLE IF NOT EXISTS `tbl_tipoescritura_legislacion` (
  `IdTipoEscritura_Legislacion` int(11) NOT NULL,
  `FK_Legislacion` int(11) DEFAULT NULL,
  `FK_TipoEscritura` varchar(45) DEFAULT NULL,
  `tbl_legislacion_IdLegislacion` int(11) NOT NULL,
  `tbl_tipoescritura_IdTipo_Escritura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_cliente`
--

CREATE TABLE IF NOT EXISTS `tbl_tipo_cliente` (
  `IdTipoCliente` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipo_cliente`
--

INSERT INTO `tbl_tipo_cliente` (`IdTipoCliente`, `Nombre`, `Estado`) VALUES
(1, 'qa', 1),
(3, 'ee', 3),
(4, 'bb', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_notario`
--

CREATE TABLE IF NOT EXISTS `tipo_notario` (
  `idTipo_notario` int(11) NOT NULL,
  `tipo_notario` varchar(45) DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_notario`
--

INSERT INTO `tipo_notario` (`idTipo_notario`, `tipo_notario`, `Estado`) VALUES
(0, 'encargada', 1),
(1, 'Encargado', 1),
(4, 'f', 9);

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
 ADD PRIMARY KEY (`CC`), ADD KEY `fk_tbl_cliente_tbl_estadocivil1_idx` (`tbl_estadocivil_IdEstado_Civil`), ADD KEY `fk_tbl_cliente_tbl_tipodocumento1_idx` (`tbl_tipodocumento_IdDocumento`), ADD KEY `fk_tbl_cliente_tbl_genero1_idx` (`tbl_genero_IdGenero`), ADD KEY `fk_tbl_cliente_tbl_tipo_cliente1_idx` (`tbl_tipo_cliente_IdTipoCliente`);

--
-- Indices de la tabla `tbl_detalle_bitacora`
--
ALTER TABLE `tbl_detalle_bitacora`
 ADD PRIMARY KEY (`IdDetalla`), ADD KEY `fk_tbl_detalle_bitacora_tbl_proceso1_idx` (`tbl_proceso_IdProceso`), ADD KEY `fk_tbl_detalle_bitacora_tbl_bitacora1_idx` (`tbl_bitacora_IdBitacora`);

--
-- Indices de la tabla `tbl_empleado`
--
ALTER TABLE `tbl_empleado`
 ADD PRIMARY KEY (`CC`), ADD KEY `fk_tbl_empleado_tbl_genero1_idx` (`tbl_genero_IdGenero`), ADD KEY `fk_tbl_empleado_tbl_tipoempleado1_idx` (`tbl_tipoempleado_IdTipo_Usuario`);

--
-- Indices de la tabla `tbl_escritura`
--
ALTER TABLE `tbl_escritura`
 ADD PRIMARY KEY (`IdEscritura`), ADD KEY `fk_tbl_escritura_tbl_plantilla1_idx` (`tbl_plantilla_IdPlantilla`), ADD KEY `fk_tbl_escritura_tbl_tipoescritura1_idx` (`tbl_tipoescritura_IdTipo_Escritura`), ADD KEY `fk_tbl_escritura_tbl_notario1_idx` (`tbl_notario_IdNotario`);

--
-- Indices de la tabla `tbl_escritura_cliente`
--
ALTER TABLE `tbl_escritura_cliente`
 ADD PRIMARY KEY (`IdEscritura_Cliente`), ADD KEY `fk_tbl_escritura_cliente_tbl_cliente1_idx` (`tbl_cliente_CC`), ADD KEY `fk_tbl_escritura_cliente_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`);

--
-- Indices de la tabla `tbl_escritura_has_tbl_empleado`
--
ALTER TABLE `tbl_escritura_has_tbl_empleado`
 ADD KEY `fk_tbl_escritura_has_tbl_empleado_tbl_empleado1_idx` (`tbl_empleado_CC`), ADD KEY `fk_tbl_escritura_has_tbl_empleado_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`);

--
-- Indices de la tabla `tbl_escritura_requisito`
--
ALTER TABLE `tbl_escritura_requisito`
 ADD PRIMARY KEY (`IdTipo_Escritura_Requisito`), ADD KEY `fk_tbl_tipoescritura_requisito_tbl_requisito1_idx` (`tbl_requisito_IdRequisito`), ADD KEY `fk_tbl_escritura_requisito_tbl_escritura1_idx` (`tbl_escritura_IdEscritura`);

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
 ADD PRIMARY KEY (`IdTipo_Empleado`);

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
-- AUTO_INCREMENT de la tabla `tbl_detalle_bitacora`
--
ALTER TABLE `tbl_detalle_bitacora`
MODIFY `IdDetalla` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_escritura`
--
ALTER TABLE `tbl_escritura`
MODIFY `IdEscritura` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_estadocivil`
--
ALTER TABLE `tbl_estadocivil`
MODIFY `IdEstado_Civil` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_genero`
--
ALTER TABLE `tbl_genero`
MODIFY `IdGenero` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tbl_legislacion`
--
ALTER TABLE `tbl_legislacion`
MODIFY `IdLegislacion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `tbl_notario`
--
ALTER TABLE `tbl_notario`
MODIFY `IdNotario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_paragrafo`
--
ALTER TABLE `tbl_paragrafo`
MODIFY `IdParagrafo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_plantilla`
--
ALTER TABLE `tbl_plantilla`
MODIFY `IdPlantilla` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_proceso`
--
ALTER TABLE `tbl_proceso`
MODIFY `IdProceso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_requisito`
--
ALTER TABLE `tbl_requisito`
MODIFY `IdRequisito` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tbl_tipodocumento`
--
ALTER TABLE `tbl_tipodocumento`
MODIFY `IdTipoDocumento` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipoempleado`
--
ALTER TABLE `tbl_tipoempleado`
MODIFY `IdTipo_Empleado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `tbl_tipoescritura`
--
ALTER TABLE `tbl_tipoescritura`
MODIFY `IdTipo_Escritura` int(11) NOT NULL AUTO_INCREMENT;
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
ADD CONSTRAINT `fk_tbl_empleado_tbl_tipoempleado1` FOREIGN KEY (`tbl_tipoempleado_IdTipo_Usuario`) REFERENCES `tbl_tipoempleado` (`IdTipo_Empleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
ADD CONSTRAINT `fk_tbl_escritura_cliente_tbl_cliente1` FOREIGN KEY (`tbl_cliente_CC`) REFERENCES `tbl_cliente` (`CC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_cliente_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_escritura_has_tbl_empleado`
--
ALTER TABLE `tbl_escritura_has_tbl_empleado`
ADD CONSTRAINT `fk_tbl_escritura_has_tbl_empleado_tbl_empleado1` FOREIGN KEY (`tbl_empleado_CC`) REFERENCES `tbl_empleado` (`CC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_escritura_has_tbl_empleado_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_escritura_requisito`
--
ALTER TABLE `tbl_escritura_requisito`
ADD CONSTRAINT `fk_tbl_escritura_requisito_tbl_escritura1` FOREIGN KEY (`tbl_escritura_IdEscritura`) REFERENCES `tbl_escritura` (`IdEscritura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_tbl_tipoescritura_requisito_tbl_requisito1` FOREIGN KEY (`tbl_requisito_IdRequisito`) REFERENCES `tbl_requisito` (`IdRequisito`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
