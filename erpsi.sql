-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2020 a las 07:42:51
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `erpsi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `IDactividad` int(11) NOT NULL,
  `registro` varchar(20) NOT NULL,
  `IDusuario` int(11) NOT NULL,
  `movimiento_act` varchar(20) NOT NULL,
  `movimiento_tabla` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`IDactividad`, `registro`, `IDusuario`, `movimiento_act`, `movimiento_tabla`) VALUES
(1, '1', 0, '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `IDasistencia` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `IDempleado` int(11) NOT NULL,
  `Hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `asistencia`
--

INSERT INTO `asistencia` (`IDasistencia`, `Fecha`, `IDempleado`, `Hora`) VALUES
(2, '2020-04-17', 2, '13:00:00'),
(4, '2020-04-02', 1, '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance`
--

CREATE TABLE `balance` (
  `IDbalance` int(11) NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafin` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IDcliente` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(15) NOT NULL,
  `apematerno` varchar(10) NOT NULL,
  `apepaterno` varchar(10) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `fenacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IDcliente`, `nombre`, `direccion`, `telefono`, `correo`, `apematerno`, `apepaterno`, `sexo`, `fenacimiento`) VALUES
(2, '2', '2', 2, '2', '2', '2', 2, '0002-02-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `IDcompra` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` float NOT NULL,
  `tipo_pago` varchar(20) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`IDcompra`, `fecha`, `total`, `tipo_pago`, `id_cliente`) VALUES
(1, '2020-04-08', 1, '1', 1),
(2, '2020-04-08', 1, '1', 1),
(3, '2020-04-27', 1, '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_compra`
--

CREATE TABLE `detalle_compra` (
  `IDdetallecompra` int(11) NOT NULL,
  `IDmateriaprima` int(11) NOT NULL,
  `IDcompra` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devoluciones`
--

CREATE TABLE `devoluciones` (
  `IDdevoluciones` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `IDproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `devoluciones`
--

INSERT INTO `devoluciones` (`IDdevoluciones`, `fecha`, `cantidad`, `descripcion`, `IDproducto`) VALUES
(1, '2020-04-08', 5, '5', 4),
(2, '2020-02-07', 2, '2', 2),
(3, '0000-00-00', 2, '2', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IDempleado` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `appaterno` varchar(30) NOT NULL,
  `apmaterno` varchar(30) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `rfc` varchar(25) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `sexo` tinyint(1) NOT NULL,
  `fechadeingreso` date NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `salario` int(11) NOT NULL,
  `estadocivil` int(11) NOT NULL,
  `nss` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `IDevaluación` int(11) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `pregunta1` varchar(70) NOT NULL,
  `pregunta2` varchar(70) NOT NULL,
  `pregunta3` varchar(70) NOT NULL,
  `pregunta4` varchar(70) NOT NULL,
  `pregunta5` varchar(70) NOT NULL,
  `pregunta6` varchar(70) NOT NULL,
  `pregunta7` varchar(70) NOT NULL,
  `pregunta8` varchar(70) NOT NULL,
  `pregunta9` varchar(70) NOT NULL,
  `pregunta10` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jornada`
--

CREATE TABLE `jornada` (
  `IDjornada` int(11) NOT NULL,
  `hrs_trabajadas` int(11) NOT NULL,
  `dias_trabajados` int(11) NOT NULL,
  `pago_hora` float NOT NULL,
  `horas_extra` int(11) NOT NULL,
  `bonos` int(11) NOT NULL,
  `IDempleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jornada`
--

INSERT INTO `jornada` (`IDjornada`, `hrs_trabajadas`, `dias_trabajados`, `pago_hora`, `horas_extra`, `bonos`, `IDempleado`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `IDmantenimiento` int(11) NOT NULL,
  `fecha_man` date NOT NULL,
  `area` varchar(20) NOT NULL,
  `IDmob` int(11) NOT NULL,
  `costo_man` int(11) NOT NULL,
  `IDempleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`IDmantenimiento`, `fecha_man`, `area`, `IDmob`, `costo_man`, `IDempleado`) VALUES
(3, '2020-04-07', '3', 3, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiaprima`
--

CREATE TABLE `materiaprima` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Descripcion` varchar(70) NOT NULL,
  `Precio` float NOT NULL,
  `Stock` int(10) NOT NULL,
  `Existencias` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materiaprima`
--

INSERT INTO `materiaprima` (`ID`, `Nombre`, `Tipo`, `Descripcion`, `Precio`, `Stock`, `Existencias`) VALUES
(1, '1', '1', '1', 1, 1, 1),
(2, '2', '1', '2', 2, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mobiliario`
--

CREATE TABLE `mobiliario` (
  `IDmobiliario` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `nic` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mobiliario`
--

INSERT INTO `mobiliario` (`IDmobiliario`, `nombre`, `descripcion`, `cantidad`, `nic`, `tipo`) VALUES
(1, '2', '2', 2, 2, '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `IDpago` int(11) NOT NULL,
  `IDempleado` int(11) NOT NULL,
  `sal` int(11) NOT NULL,
  `fecha_dep` date NOT NULL,
  `met_pag` varchar(30) NOT NULL,
  `des` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `IDpedido` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `IDcliente` int(11) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` float NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `IDproducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`IDpedido`, `fecha`, `IDcliente`, `precio`, `cantidad`, `direccion`, `IDproducto`) VALUES
(1, '0000-00-00', 2, 2, 33, '1', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `IDpermiso` int(11) NOT NULL,
  `IDusuario` int(11) NOT NULL,
  `actpermiso` tinyint(1) NOT NULL,
  `actconsulta` tinyint(1) NOT NULL,
  `asispermiso` tinyint(1) NOT NULL,
  `asisconsulta` tinyint(1) NOT NULL,
  `balpermiso` tinyint(1) NOT NULL,
  `balconsulta` tinyint(1) NOT NULL,
  `clipermiso` tinyint(1) NOT NULL,
  `cliconsulta` tinyint(1) NOT NULL,
  `compermiso` tinyint(1) NOT NULL,
  `comconsulta` tinyint(1) NOT NULL,
  `dcompermiso` tinyint(1) NOT NULL,
  `dcomconsulta` tinyint(1) NOT NULL,
  `devpermiso` tinyint(1) NOT NULL,
  `devconsulta` tinyint(1) NOT NULL,
  `emppermiso` tinyint(1) NOT NULL,
  `empconsulta` tinyint(1) NOT NULL,
  `evapermiso` tinyint(1) NOT NULL,
  `evaconsulta` tinyint(1) NOT NULL,
  `jorpermiso` tinyint(1) NOT NULL,
  `jorconsulta` tinyint(1) NOT NULL,
  `manpermiso` tinyint(1) NOT NULL,
  `manconsulta` tinyint(1) NOT NULL,
  `matpermiso` tinyint(1) NOT NULL,
  `matconsulta` tinyint(1) NOT NULL,
  `mobpermiso` tinyint(1) NOT NULL,
  `mobconsulta` tinyint(1) NOT NULL,
  `pagopermiso` tinyint(1) NOT NULL,
  `pagoconsulta` tinyint(1) NOT NULL,
  `pedidopermiso` tinyint(1) NOT NULL,
  `pedidoconsulta` tinyint(1) NOT NULL,
  `produpermiso` tinyint(1) NOT NULL,
  `produconsulta` tinyint(1) NOT NULL,
  `provepermiso` tinyint(1) NOT NULL,
  `proveconsulta` tinyint(1) NOT NULL,
  `proyepermiso` tinyint(1) NOT NULL,
  `proyeconsulta` tinyint(1) NOT NULL,
  `rempermiso` tinyint(1) NOT NULL,
  `remconsulta` tinyint(1) NOT NULL,
  `usuariopermiso` tinyint(1) NOT NULL,
  `usuarioconsulta` tinyint(1) NOT NULL,
  `ventapermiso` tinyint(1) NOT NULL,
  `ventaconsulta` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IDproducto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `preciov` float NOT NULL,
  `precioc` float NOT NULL,
  `cantidad` float NOT NULL,
  `cantmin` int(11) NOT NULL,
  `cantmax` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IDproducto`, `nombre`, `descripcion`, `preciov`, `precioc`, `cantidad`, `cantmin`, `cantmax`, `categoria`) VALUES
(4, 'principe', '2', 2, 2, 2, 2, 2, 1),
(5, '2', '2', 2, 2, 2, 2, 2, 1),
(8, '1', '1', 1, 1, 1, 1, 1, 1),
(9, '1', '1', 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `IDproveedor` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `rfc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`IDproveedor`, `nombre`, `telefono`, `direccion`, `correo`, `rfc`) VALUES
(2, '12', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `IDproyecto` int(11) NOT NULL,
  `nombre_pro` varchar(20) NOT NULL,
  `tipo_pro` varchar(20) NOT NULL,
  `IDempleado` int(11) NOT NULL,
  `fecha_in` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`IDproyecto`, `nombre_pro`, `tipo_pro`, `IDempleado`, `fecha_in`, `fecha_fin`, `descripcion`) VALUES
(2, '1', '1', 2, '0000-00-00', '0000-00-00', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remplazo`
--

CREATE TABLE `remplazo` (
  `IDremplazo` int(11) NOT NULL,
  `IDmobiliario` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `costo` float NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `remplazo`
--

INSERT INTO `remplazo` (`IDremplazo`, `IDmobiliario`, `fecha`, `costo`, `descripcion`) VALUES
(1, 1, '0000-00-00', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDusuario` int(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IDusuario`, `nombre`, `tipo`, `password`) VALUES
(1, '4', 1, '4'),
(2, '1', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IDVenta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `IDCliente` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `tipo_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad`
--
ALTER TABLE `actividad`
  ADD PRIMARY KEY (`IDactividad`);

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`IDasistencia`);

--
-- Indices de la tabla `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`IDbalance`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDcliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`IDcompra`);

--
-- Indices de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  ADD PRIMARY KEY (`IDdetallecompra`);

--
-- Indices de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  ADD PRIMARY KEY (`IDdevoluciones`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IDempleado`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`IDevaluación`);

--
-- Indices de la tabla `jornada`
--
ALTER TABLE `jornada`
  ADD PRIMARY KEY (`IDjornada`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`IDmantenimiento`);

--
-- Indices de la tabla `materiaprima`
--
ALTER TABLE `materiaprima`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  ADD PRIMARY KEY (`IDmobiliario`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`IDpago`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDpedido`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`IDpermiso`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IDproducto`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`IDproveedor`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`IDproyecto`);

--
-- Indices de la tabla `remplazo`
--
ALTER TABLE `remplazo`
  ADD PRIMARY KEY (`IDremplazo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad`
--
ALTER TABLE `actividad`
  MODIFY `IDactividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `IDasistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `balance`
--
ALTER TABLE `balance`
  MODIFY `IDbalance` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IDcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `IDcompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_compra`
--
ALTER TABLE `detalle_compra`
  MODIFY `IDdetallecompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `devoluciones`
--
ALTER TABLE `devoluciones`
  MODIFY `IDdevoluciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IDempleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `IDevaluación` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jornada`
--
ALTER TABLE `jornada`
  MODIFY `IDjornada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `IDmantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materiaprima`
--
ALTER TABLE `materiaprima`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `mobiliario`
--
ALTER TABLE `mobiliario`
  MODIFY `IDmobiliario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `IDpago` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `IDpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `IDpermiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `IDproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `IDproveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `IDproyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `remplazo`
--
ALTER TABLE `remplazo`
  MODIFY `IDremplazo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IDusuario` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
