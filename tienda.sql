-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2021 a las 05:20:23
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

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
  `Descipcion` text DEFAULT NULL
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
  `Talla` decimal(10,2) NOT NULL,
  `Descuento` int(3) DEFAULT NULL,
  `Descripcion` text DEFAULT NULL,
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
(3, 'Jordan MA2', 10, '2899.00', '24.00', 20, 'Rompe el status quo del calzado con el Jordan MA2. Confeccionado con una combinación de gamuza, cuero de plena flor y una variedad de textiles, este calzado cuenta con etiquetas no convencionales, micrográficos técnicos y bordes de espuma rústica para lograr un equilibrio entre lo nuevo y lo clásico. Fácil de poner y quitar, se usa con casi todo.', 1, 1, 3, 'Negro/Rojo'),
(4, 'Brantano', 1, '679.00', '22.00', NULL, 'Botas Marca Brantano de piel color negro ', 7, 24, 4, 'Negro'),
(5, 'Brantano', 1, '679.00', '23.00', NULL, 'Botas Marca Brantano de piel color negro ', 7, 24, 4, 'Negro'),
(6, 'Call It Spring', 3, '999.00', '23.00', NULL, 'Bota Call It Spring Sterna Casual', 7, 3, 4, 'Miel'),
(7, 'Call It Spring', 2, '999.00', '23.50', NULL, 'Bota Call It Spring Sterna Casual', 7, 10, 4, 'Miel'),
(8, 'Call It Spring', 2, '1500.00', '24.50', NULL, 'Bota Call It Spring Sterna Casual', 7, 10, 2, 'Negro'),
(9, 'RB', 1, '999.00', '23.00', NULL, 'Bota RBCOLLECTION exterior piel sintetica ', 7, 3, 4, 'Café'),
(10, 'Carlo Rossetti', 5, '1689.00', '24.00', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 25, 3, 'Negro'),
(11, 'Carlo Rossetti', 3, '1689.00', '26.50', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 25, 3, 'Miel'),
(12, 'Ozono', 5, '948.00', '12.00', 20, 'Bota alta capa de Ozono', 9, 26, 1, 'Café'),
(13, 'Ozono', 5, '948.00', '23.00', 10, 'Bota alta capa de Ozono', 9, 26, 1, 'Negro'),
(14, 'Ozono', 4, '1200.00', '26.00', 10, 'Bota alta capa de Ozono', 9, 26, 3, 'Negro'),
(15, 'Wonders', 3, '789.00', '24.00', NULL, 'Botas Largas Oregón Mujer ', 7, 8, 2, 'Miel'),
(16, 'Wonders', 4, '789.00', '25.00', NULL, 'Botas Largas Oregón Mujer', 7, 8, 2, 'Café'),
(17, 'Wonders', 4, '789.00', '23.00', NULL, 'Botas Largas Oregón Mujer', 7, 8, 2, 'Negro'),
(18, 'Beige', 5, '749.50', '22.00', NULL, 'Bota de tacon, con Autoajuste estilo negro', 7, 11, 2, 'Beige'),
(19, 'Beige', 2, '749.50', '23.00', NULL, 'Bota de tacon, con Autoajuste estilo negro', 7, 11, 2, 'Miel'),
(20, 'Beige', 5, '749.50', '26.00', NULL, 'Bota de tacon, con Autoajuste estilo negro', 7, 11, 2, 'Negro'),
(21, 'Sku', 5, '999.00', '22.00', NULL, 'Bota Dama Negro', 7, 24, 4, 'Negro'),
(22, 'Sku', 5, '999.00', '23.00', NULL, 'Bota Dama color Miel', 7, 24, 4, 'Miel'),
(23, 'Sku', 3, '999.00', '25.00', NULL, 'Bota Dama Café', 7, 24, 2, 'Café'),
(24, 'Maxi', 6, '899.00', '11.00', NULL, 'Bota estilo casual color café', 9, 25, 1, 'Café'),
(25, 'Maxi', 3, '899.00', '16.00', NULL, 'Bota estilo casual color miel', 7, 25, 1, 'Miel'),
(26, 'Maxi', 6, '899.00', '22.00', NULL, 'Bota estilo casual color negro', 7, 25, 4, 'Negro'),
(27, 'Brant', 7, '679.00', '22.00', NULL, 'Botas de piel color negro para mujer', 7, 23, 2, 'Negro'),
(28, 'Brant', 5, '679.00', '23.00', NULL, 'Botas de piel color café para mujer ', 7, 23, 2, 'Café'),
(29, 'Shasa', 4, '199.00', '23.00', NULL, 'Sandalia doble nudo color blanco', 11, 23, 4, 'Blanco'),
(30, 'Shasa', 5, '199.00', '24.00', NULL, 'Sandalia doble nudo color verde militar', 11, 23, 2, 'Verde Militar'),
(31, 'Shasa', 5, '199.00', '26.00', NULL, 'Sandalia doble nudo color nada', 11, 23, 2, 'Nada'),
(32, 'Nude', 5, '299.00', '11.00', NULL, 'Tacon Bloque mini tiras largas', 14, 9, 1, 'Rosa');

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
(22, 'Eileen Garcia México'),
(23, 'Sahara'),
(24, 'Brantano'),
(25, 'Carlo Rossetti'),
(26, 'Ozono');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `ID_Rol` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descipcion` text DEFAULT NULL
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
('2021-07-26', '2324.00', 9, 6),
('2021-07-29', '1500.00', 10, 1);

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
  MODIFY `ID_Productos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ID_Proveedor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `ID_Rol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `ID_Venta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
