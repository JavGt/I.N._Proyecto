-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 29-07-2021 a las 22:08:03
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `ID_Categoria` int(10) NOT NULL,
  `Categoria` varchar(50) NOT NULL,
  `Descipcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`ID_Categoria`, `Categoria`, `Descipcion`) VALUES
(1, 'Tenis', NULL),
(2, 'Zapatos', NULL),
(3, 'Zapatillas', NULL),
(4, 'Tenis Casuales', NULL),
(5, 'Albarca', NULL),
(6, 'Alpargata', NULL),
(7, 'Botas', NULL),
(8, 'Botas de agua', NULL),
(9, 'Botín', NULL),
(10, 'Calzado de protección', NULL),
(11, 'Chancla', NULL),
(12, 'Chancleta/Hawaiana', NULL),
(13, 'Escarpín', NULL),
(14, 'Huarache', NULL),
(15, 'Correr / Running', NULL),
(16, 'Senderismo, Trekking ', NULL),
(17, 'Montaña', NULL),
(18, 'Trail Running', NULL),
(19, 'Aproximación', NULL),
(20, 'Zapatillas para Caminar', NULL),
(21, 'Minimalistas / Barefoot', NULL),
(22, 'Swimrun', NULL),
(23, 'Escalada o Pies de Gato', NULL),
(24, 'Cross Training', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `Nombre` varchar(50) NOT NULL,
  `AP` varchar(50) NOT NULL,
  `AM` varchar(50) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` int(50) NOT NULL,
  `ID_Rol` int(10) NOT NULL,
  `ID_Colaborador` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`Nombre`, `AP`, `AM`, `Direccion`, `Correo`, `Telefono`, `ID_Rol`, `ID_Colaborador`) VALUES
('FRANCISCO JAVIER', 'BAEZ', 'GUTIERREZ', 'AV. INDEPENDENCIA NO. 241	', 'No tiene', 246123342, 2, 1),
('MATEO ', 'BENITEZ ', 'JUAN', 'AV. INDEPENDENCIA NO. 241	', 'No tiene', 246234121, 1, 2),
('AGUSTINA ', 'CARRERA ', 'NEGRETE', 'AV. INDEPENDENCIA NO. 779	', 'No Tiene', 246235242, 1, 3),
('VICTORIA  EUGENIA ', 'CUEVAS ', 'JIMENEZ', 'AV. 20 DE NOVIEMBRE NO.1024	', NULL, 246242453, 1, 4),
('CAMILO ', 'MORA ', 'MUÑOZ', 'AV. 20 DE NOVIEMBRE NO.1024	', NULL, 246636353, 1, 5),
('ISIDRO ', 'BRAVO ', 'UBIETA', 'CALLE ZARAGOZA NO. 1010	', NULL, 246234153, 1, 6),
('IBIS IVONNE', 'JUAREZ ', 'GAVITO', 'CALLE MATAMOROS NO. 310	', NULL, 246234753, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_venta`
--

CREATE TABLE `detalles_venta` (
  `ID_Productos` int(10) NOT NULL,
  `ID_Venta` int(10) NOT NULL,
  `Cantidad` int(50) NOT NULL,
  `Total` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `detalles_venta`
--

INSERT INTO `detalles_venta` (`ID_Productos`, `ID_Venta`, `Cantidad`, `Total`) VALUES
(1, 1, 1, 899),
(2, 1, 1, 1649),
(1, 2, 1, 899),
(2, 2, 1, 1649),
(1, 3, 10, 899);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edad`
--

CREATE TABLE `edad` (
  `ID_Edad` int(10) NOT NULL,
  `Edad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `edad`
--

INSERT INTO `edad` (`ID_Edad`, `Edad`) VALUES
(1, 'Calzado para bebé e infantil'),
(2, 'Dama'),
(3, 'Caballero'),
(4, 'Juvenil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Productos` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Cantidad` int(5) NOT NULL,
  `Precio` decimal(11,2) NOT NULL,
  `Talla` decimal(4,2) NOT NULL,
  `Descuento` int(3) DEFAULT NULL,
  `Descripcion` text,
  `ID_Categoria` int(10) NOT NULL,
  `ID_Proveedor` int(10) NOT NULL,
  `ID_Edad` int(10) NOT NULL,
  `Color` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Productos`, `Nombre`, `Cantidad`, `Precio`, `Talla`, `Descuento`, `Descripcion`, `ID_Categoria`, `ID_Proveedor`, `ID_Edad`, `Color`) VALUES
(1, 'Nike Revolution 5', 5, '899.00', '9.00', NULL, '¡Es un llamado a todos los artistas jóvenes! El Nike Blazer Mid\' 77 BB invita a los niños a pintar, dibujar y diseñar este clásico del básquetbol como quieren. Los ponemos en marcha con salpicaduras de pintura y un logotipo garabateado. Vintage, cómodos y duraderos, están diseñados para arrasar.', 1, 1, 1, ' Puesta de sol pulso/Blanco/Negro'),
(2, 'Nike Blazer Mid \'77 BB', 5, '1649.00', '8.00', 10, 'Corre, juega y diviértete con el Nike Revolution 5. Envuelve los pies de los más pequeños con cuero duradero para brindar soporte y su suave amortiguación de espuma ofrece comodidad revolucionaria. La correa permite poner y quitar fácilmente el calzado.', 1, 1, 1, 'Blanco/Blanco/Vela/Negro'),
(3, 'Jordan MA2', 10, '2899.00', '24.00', 20, 'Rompe el status quo del calzado con el Jordan MA2. Confeccionado con una combinación de gamuza, cuero de plena flor y una variedad de textiles, este calzado cuenta con etiquetas no convencionales, micrográficos técnicos y bordes de espuma rústica para lograr un equilibrio entre lo nuevo y lo clásico. Fácil de poner y quitar, se usa con casi todo.', 1, 1, 3, 'Negro/Rojo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID_Proveedor` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`ID_Proveedor`, `Nombre`) VALUES
(1, 'Nike '),
(2, 'Adidas'),
(3, 'Agatha Ruiz de la Prada '),
(4, 'Bambino '),
(5, 'goroshus '),
(6, 'Vacr'),
(7, 'MilaMilu'),
(8, 'Balenciaga'),
(9, 'Gucci'),
(10, 'Prada'),
(11, 'Christian Louboutin'),
(12, 'Jansport'),
(13, 'Lacoste'),
(14, 'Lotto'),
(15, 'Puma'),
(16, 'Reebok'),
(17, 'Skechers'),
(18, 'Under Armour'),
(19, 'New Balance'),
(20, 'Fila'),
(21, 'Brooks'),
(22, 'Eileen Garcia México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descipcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`ID_Rol`, `Nombre`, `Descipcion`) VALUES
(1, 'Vendedor', 'Que vende cosas, especialmente si se dedica profesionalmente.'),
(2, 'Gerente', 'Persona que por oficio se encarga de dirigir, gestionar o administrar una sociedad, empresa u otra entidad.\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `Fecha` date NOT NULL,
  `Total` decimal(11,2) NOT NULL,
  `ID_Venta` int(10) NOT NULL,
  `ID_Colaborador` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`Fecha`, `Total`, `ID_Venta`, `ID_Colaborador`) VALUES
('2021-07-01', '2528.00', 1, 3),
('2020-07-08', '2528.00', 2, 3),
('2020-07-01', '2528.00', 3, 1),
('2020-07-08', '899.00', 4, 3),
('2021-07-29', '1000.00', 5, 4),
('2021-07-28', '10.00', 6, 6),
('2021-07-22', '2528.00', 7, 5),
('2021-07-21', '5.00', 8, 5),
('2021-07-26', '2324.00', 9, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`ID_Colaborador`),
  ADD KEY `ID_Rol` (`ID_Rol`);

--
-- Indices de la tabla `detalles_venta`
--
ALTER TABLE `detalles_venta`
  ADD PRIMARY KEY (`ID_Venta`,`ID_Productos`),
  ADD KEY `ID_Productos` (`ID_Productos`);

--
-- Indices de la tabla `edad`
--
ALTER TABLE `edad`
  ADD PRIMARY KEY (`ID_Edad`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Productos`),
  ADD KEY `ID_Categoria` (`ID_Categoria`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`),
  ADD KEY `ID_Edad` (`ID_Edad`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`ID_Rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`ID_Venta`),
  ADD KEY `ID_Colaborador` (`ID_Colaborador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_Categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `ID_Colaborador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `edad`
--
ALTER TABLE `edad`
  MODIFY `ID_Edad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Productos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ID_Proveedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_Rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `ID_Venta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `colaborador_ibfk_1` FOREIGN KEY (`ID_Rol`) REFERENCES `rol` (`ID_Rol`);

--
-- Filtros para la tabla `detalles_venta`
--
ALTER TABLE `detalles_venta`
  ADD CONSTRAINT `detalles_venta_ibfk_1` FOREIGN KEY (`ID_Venta`) REFERENCES `venta` (`ID_Venta`),
  ADD CONSTRAINT `detalles_venta_ibfk_2` FOREIGN KEY (`ID_Productos`) REFERENCES `productos` (`ID_Productos`),
  ADD CONSTRAINT `detalles_venta_ibfk_3` FOREIGN KEY (`ID_Venta`) REFERENCES `venta` (`ID_Venta`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`ID_Categoria`) REFERENCES `categoria` (`ID_Categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`ID_Edad`) REFERENCES `edad` (`ID_Edad`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`ID_Colaborador`) REFERENCES `colaborador` (`ID_Colaborador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
