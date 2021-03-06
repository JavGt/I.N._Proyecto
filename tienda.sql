-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-08-2021 a las 06:57:35
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
(24, 'Cross Training', NULL),
(25, 'Pantuflas', NULL);

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
('IBIS IVONNE', 'JUAREZ ', 'GAVITO', 'CALLE MATAMOROS NO. 310	', NULL, 246234753, 1, 7),
('MARCO ANTONIO', 'FLORES', 'FLORES', 'AV. INDEPENDENCIA NO. 241	', 'No tiene', 246123342, 2, 9),
('VERENICE', 'GEORGE ', 'CRUZ', 'ENRIQUE SEGOVIANO', 'No tiene', 2314242, 1, 10),
('YEHUDI', 'ROJAS ', 'DE LA CRUZ', '1RO DE MAYO #23', 'No tiene', 246134171, 2, 11);

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
(32, 'Nude', 5, '299.00', '11.00', NULL, 'Tacon Bloque mini tiras largas', 14, 9, 1, 'Rosa'),
(33, 'Capricho OR', 3, '1200.00', '22.00', 30, 'Zapato de piso de piel.', 2, 9, 2, 'Beige'),
(34, 'Capricho OR', 3, '1200.00', '23.00', 30, 'Zapato de piso de piel.', 2, 9, 2, 'Negro'),
(35, 'Capricho OR', 3, '1200.00', '24.00', 30, 'Zapato de piso de piel.', 2, 9, 2, 'Azul'),
(36, 'Lucrecia Cordero', 2, '2000.00', '23.00', 0, 'Zapatilla con tacón numero10, con tirantes de piedra sircornia.', 3, 23, 2, 'Negro con Plata.'),
(37, 'Pietro Alessandro', 1, '2500.00', '24.00', 20, 'Zapatilla con taco de 11cm de piel.', 3, 23, 2, 'Dorado'),
(38, 'Dariana Fency', 3, '1200.00', '24.00', 10, 'Zapatilla de piel con sujetador al tobillo.', 3, 7, 2, 'Negor'),
(39, 'D´Crístian', 5, '999.00', '26.00', 10, 'Zapatilla con plataforma tacón de 10cm con flores.', 3, 26, 2, 'Café'),
(40, 'Deportivo Serraje', 3, '1300.00', '23.50', 0, 'DEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\nDEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\n', 1, 13, 4, 'Marrón Arena'),
(41, 'Deportivo Combinado', 2, '1500.00', '25.00', 5, 'DEPORTIVO EN COMBINACIÓN DE MATERIALES. SUELA EN CONTRASTE DE COLOR. TIRADOR TRASERO. CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 13, 4, 'Beige'),
(42, 'Deportivo Combinado', 3, '1500.00', '23.00', 5, 'DEPORTIVO EN COMBINACIÓN DE MATERIALES. SUELA EN CONTRASTE DE COLOR. TIRADOR TRASERO. CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 13, 4, 'Negro'),
(43, 'Deportivo Plataforma Piel', 3, '1499.00', '25.00', 5, 'DEPORTIVO ABOTINADO DE PIEL CON PLATAFORMA. TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 20, 2, 'Blanco'),
(44, 'Deportivas Canvas', 2, '600.00', '23.00', NULL, 'DETALLE DE PESPUNTES. TIRADOR TRASERO. CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 4, 4, 'Crudo'),
(45, 'Deportivo Contraste', 2, '800.00', '22.00', 5, 'DEPORTIVO EN COMBINACIÓN DE MATERIALES Y DETALLES EN CONTRASTE DE COLOR. CIERRE MEDIANTE CORDONES.', 1, 12, 4, 'Blanco'),
(46, 'Zapato Tacón Destalonado Brillos', 4, '1499.00', '23.00', NULL, 'ZAPATO DE TACÓN DESTALONADO CON DETALLE DE BRILLOS. ESCOTE Y TALÓN CUADRADOS. ACABADO EN PUNTA ALARGADA.', 2, 3, 4, 'Negro'),
(47, 'Zapato Tacón Destalonado Brillos', 4, '1499.00', '24.00', NULL, 'ZAPATO DE TACÓN DESTALONADO CON DETALLE DE BRILLOS. ESCOTE Y TALÓN CUADRADOS. ACABADO EN PUNTA ALARGADA.', 2, 3, 4, 'Negro'),
(48, 'Zapato Tacón Destalonado Brillos', 4, '1499.00', '23.00', NULL, 'ZAPATO DE TACÓN DESTALONADO CON DETALLE DE BRILLOS. ESCOTE Y TALÓN CUADRADOS. ACABADO EN PUNTA ALARGADA.', 2, 3, 4, 'Oro'),
(49, 'Zapato Tacón Tejido', 2, '999.00', '22.00', NULL, 'ZAPATO TACÓN TEJIDO\r\nZAPATO DE TACÓN TIPO SALÓN DE TEJIDO. ACABADO EN PUNTA.', 2, 4, 4, 'Rosa Fluorescente'),
(50, 'Nike Revolution 7', 5, '899.00', '26.00', NULL, '¡Es un llamado a todos los artistas jóvenes! El Nike Blazer Mid\' 77 BB invita a los niños a pintar, dibujar y diseñar este clásico del básquetbol como quieren. Los ponemos en marcha con salpicaduras de pintura y un logotipo garabateado. Vintage, cómodos y duraderos, están diseñados para arrasar.', 1, 1, 1, ' Puesta de sol pulso/Blanco/Negro'),
(51, 'Nike Blazer Mid \'77 BB', 5, '1649.00', '8.00', 10, 'Corre, juega y diviértete con el Nike Revolution 5. Envuelve los pies de los más pequeños con cuero duradero para brindar soporte y su suave amortiguación de espuma ofrece comodidad revolucionaria. La correa permite poner y quitar fácilmente el calzado.', 1, 1, 1, 'Blanco/Blanco/Vela/Negro'),
(52, 'Jordan MA2', 10, '2899.00', '24.00', 20, 'Rompe el status quo del calzado con el Jordan MA2. Confeccionado con una combinación de gamuza, cuero de plena flor y una variedad de textiles, este calzado cuenta con etiquetas no convencionales, micrográficos técnicos y bordes de espuma rústica para lograr un equilibrio entre lo nuevo y lo clásico. Fácil de poner y quitar, se usa con casi todo.', 1, 1, 3, 'Negro/Rojo'),
(53, 'Brantano', 1, '679.00', '22.00', NULL, 'Botas Marca Brantano de piel color negro ', 7, 24, 4, 'Negro'),
(54, 'Brantano', 1, '679.00', '23.00', NULL, 'Botas Marca Brantano de piel color negro ', 7, 24, 4, 'Negro'),
(55, 'Call It Spring', 3, '999.00', '23.00', NULL, 'Bota Call It Spring Sterna Casual', 7, 3, 4, 'Miel'),
(56, 'Call It Spring', 2, '999.00', '23.50', NULL, 'Bota Call It Spring Sterna Casual', 7, 10, 4, 'Miel'),
(57, 'Call It Spring', 2, '1500.00', '24.50', NULL, 'Bota Call It Spring Sterna Casual', 7, 10, 2, 'Negro'),
(58, 'RB', 1, '999.00', '23.00', NULL, 'Bota RBCOLLECTION exterior piel sintetica ', 7, 3, 4, 'Café'),
(59, 'Carlo Rossetti', 5, '1689.00', '24.00', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 25, 3, 'Negro'),
(60, 'Carlo Rossetti', 3, '1689.00', '26.50', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 25, 3, 'Miel'),
(61, 'Ozono', 5, '948.00', '12.00', 20, 'Bota alta capa de Ozono', 9, 26, 1, 'Café'),
(62, 'Ozono', 5, '948.00', '23.00', 10, 'Bota alta capa de Ozono', 9, 26, 1, 'Negro'),
(63, 'Ozono', 4, '1200.00', '26.00', 10, 'Bota alta capa de Ozono', 9, 26, 3, 'Negro'),
(64, 'Wonders', 3, '789.00', '24.00', NULL, 'Botas Largas Oregón Mujer ', 7, 8, 2, 'Miel'),
(65, 'Wonders', 4, '789.00', '25.00', NULL, 'Botas Largas Oregón Mujer', 7, 8, 2, 'Café'),
(66, 'Wonders', 4, '789.00', '23.00', NULL, 'Botas Largas Oregón Mujer', 7, 8, 2, 'Negro'),
(67, 'Brantsss', 8, '679.00', '22.50', NULL, 'Botas de piel color negro para mujer', 7, 23, 4, 'Negro'),
(68, 'Brantt', 3, '679.00', '23.50', NULL, 'Botas de piel color café para mujer ', 7, 21, 4, 'Negras'),
(69, 'Shasas', 5, '199.00', '23.50', NULL, 'Sandalia doble nudo color blanco', 11, 23, 2, 'Azul'),
(70, 'Shasath', 9, '250.00', '24.50', NULL, 'Sandalia doble nudo color verde militar', 11, 23, 4, 'Verde limon'),
(71, 'Shasahy', 2, '199.00', '26.50', NULL, 'Sandalia doble nudo color nada', 11, 6, 4, 'Blanco'),
(72, 'Nude', 8, '299.00', '11.50', NULL, 'Tacon Bloque mini tiras largas', 14, 9, 1, 'Rosa palo'),
(73, 'Capricho OR', 9, '1200.00', '22.50', 30, 'Zapato de piso de piel.', 2, 9, 4, 'Beige'),
(74, 'Capricho OR', 5, '1200.00', '23.50', 20, 'Zapato de piso de piel.', 2, 9, 4, 'Oro'),
(75, 'Capricho OR', 4, '1200.00', '24.50', 15, 'Zapato de piso de piel.', 2, 6, 4, 'Azul'),
(76, 'Lucrecia Cordero', 8, '2000.00', '23.50', 0, 'Zapatilla con tacón numero10, con tirantes de piedra sircornia.', 3, 10, 4, 'Negro con Plata.'),
(77, 'Pietro Alessandro', 2, '2500.00', '24.50', 15, 'Zapatilla con taco de 11cm de piel.', 11, 6, 4, 'Dorado'),
(78, 'Dariana Fency', 9, '1200.00', '24.50', 5, 'Zapatilla de piel con sujetador al tobillo.', 3, 23, 4, 'Purpura'),
(79, 'D´Crístian', 1, '999.00', '26.50', 5, 'Zapatilla con plataforma tacón de 10cm con flores.', 3, 8, 4, 'Negro'),
(80, 'Deportivo Serraje', 2, '1300.00', '23.50', 0, 'DEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\nDEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\n', 1, 18, 3, 'Marrón Arena'),
(81, 'Wondersyu', 8, '950.00', '25.50', 5, 'Botas Largas Oregón Mujer', 7, 8, 4, 'Negras'),
(82, 'WondersLove', 3, '789.00', '23.50', 9, 'Botas Largas Oregón Mujer', 7, 26, 4, 'Negro'),
(83, 'BrantsssAt', 20, '679.00', '24.50', 20, 'Botas de piel color negro para mujer', 14, 4, 2, 'Azul'),
(84, 'Brantt', 8, '679.00', '26.50', NULL, 'Botas de piel color café para mujer ', 7, 5, 2, 'Cafe'),
(85, 'Shasasik', 9, '100.00', '25.50', 10, 'Sandalia doble nudo color blanco', 11, 13, 4, 'Azul'),
(86, 'Shasath', 1, '250.00', '24.50', NULL, 'Sandalia doble nudo color verde militar', 11, 10, 2, 'Verde lima'),
(87, 'Shasatr', 5, '890.00', '22.50', 5, 'Sandalia doble nudo color nada', 11, 1, 2, 'Blanco con negro'),
(88, 'Nude', 10, '566.00', '11.50', NULL, 'Tacon Bloque mini tiras largas', 14, 9, 1, 'Rosa Pastel'),
(89, 'Capricho ORS', 10, '1200.00', '22.50', 15, 'Zapato de piso de piel.', 2, 9, 2, 'Beige'),
(90, 'Capricho ORds', 5, '1200.00', '22.50', 15, 'Zapato de piso de piel.', 2, 9, 2, 'Oro'),
(91, 'Capricho OR', 3, '1200.00', '26.50', 15, 'Zapato de piso de piel.', 13, 1, 2, 'Azul'),
(92, 'Lucrecia Cordero', 9, '2000.00', '24.50', 0, 'Zapatilla con tacón numero10, con tirantes de piedra sircornia.', 3, 10, 4, 'Negro con Plata.'),
(93, 'Pietro Alessandro', 8, '2500.00', '25.50', 10, 'Zapatilla con taco de 11cm de piel.', 3, 5, 2, 'Dorado'),
(94, 'Dariana Fency', 8, '1200.00', '24.50', 10, 'Zapatilla de piel con sujetador al tobillo.', 3, 7, 4, 'Purpura'),
(95, 'D´Crístian', 1, '999.00', '26.50', 5, 'Zapatilla con plataforma tacón de 10cm con flores.', 3, 7, 2, 'Negro'),
(96, 'Deportivo Serraje', 2, '1300.00', '23.50', 0, 'DEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\nDEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\n', 1, 10, 3, 'Marrón Arena'),
(97, 'Nike Revolution ', 5, '1200.00', '9.00', NULL, '¡Es un llamado a todos los artistas jóvenes! El Nike Blazer Mid\' 77 BB invita a los niños a pintar, dibujar y diseñar este clásico del básquetbol como quieren. Los ponemos en marcha con salpicaduras de pintura y un logotipo garabateado. Vintage, cómodos y duraderos, están diseñados para arrasar.', 1, 13, 1, ' Puesta de sol pulso/Blanco/Negro'),
(98, 'Nike Blazer BB', 8, '1550.00', '8.50', 10, 'Corre, juega y diviértete con el Nike Revolution 5. Envuelve los pies de los más pequeños con cuero duradero para brindar soporte y su suave amortiguación de espuma ofrece comodidad revolucionaria. La correa permite poner y quitar fácilmente el calzado.', 1, 9, 1, 'Blanco/Blanco/Vela/Negro'),
(99, 'Jordan MA3', 11, '2999.00', '24.50', 15, 'Rompe el status quo del calzado con el Jordan MA2. Confeccionado con una combinación de gamuza, cuero de plena flor y una variedad de textiles, este calzado cuenta con etiquetas no convencionales, micrográficos técnicos y bordes de espuma rústica para lograr un equilibrio entre lo nuevo y lo clásico. Fácil de poner y quitar, se usa con casi todo.', 1, 9, 3, 'Negro/Rojo'),
(100, 'Brantafg', 5, '899.00', '22.50', 5, 'Botas Marca Brantano de piel color negro ', 7, 9, 4, 'Cafe'),
(101, 'Brantano', 8, '750.00', '23.50', NULL, 'Botas Marca Brantano de piel color negro ', 7, 21, 2, 'Amarillo'),
(102, 'Call It Spring', 5, '1500.00', '23.50', NULL, 'Bota Call It Spring Sterna Casual', 7, 23, 4, 'Cafe'),
(103, 'Call It Spring', 9, '2500.00', '24.50', 5, 'Bota Call It Spring Sterna Casual', 7, 10, 2, 'Negras '),
(104, 'Call It Spring', 8, '1550.00', '26.50', 5, 'Bota Call It Spring Sterna Casual', 7, 11, 2, 'Blancas'),
(105, 'RBGT', 1, '1500.00', '23.50', 5, 'Bota RBCOLLECTION exterior piel sintetica ', 7, 26, 4, 'Negro'),
(106, 'Carlo Rossetti', 6, '1700.00', '24.50', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 22, 3, 'Arena'),
(107, 'Carlo Rossetti', 4, '1780.00', '26.50', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 20, 3, 'Marron'),
(108, 'Ozono', 2, '948.00', '12.50', 20, 'Bota alta capa de Ozono', 9, 21, 1, 'Negro'),
(109, 'Ozono Bn', 5, '950.00', '23.50', 15, 'Bota alta capa de Ozono', 9, 14, 1, 'Negro'),
(110, 'OzonoNK', 2, '1250.00', '26.50', 5, 'Bota alta capa de Ozono', 9, 25, 2, 'Negro'),
(111, 'Wondersss', 6, '790.00', '24.50', 5, 'Botas Largas Oregón Mujer ', 7, 6, 4, ' Cafe'),
(112, 'Woonders', 6, '798.00', '25.50', 5, 'Botas Largas Oregón Mujer', 7, 4, 4, 'Negro'),
(113, 'Nike Revolution 7', 5, '1200.00', '27.00', 20, '¡Es un llamado a todos los artistas jóvenes! El Nike Blazer Mid\' 77 BB invita a los niños a pintar, dibujar y diseñar este clásico del básquetbol como quieren. Los ponemos en marcha con salpicaduras de pintura y un logotipo garabateado. Vintage, cómodos y duraderos, están diseñados para arrasar.', 1, 1, 3, ' Puesta de sol pulso/Blanco/Negro'),
(114, 'Nike Blazer Mid \'69', 5, '1800.00', '26.50', 20, 'Corre, juega y diviértete con el Nike Revolution 5. Envuelve los pies de los más pequeños con cuero duradero para brindar soporte y su suave amortiguación de espuma ofrece comodidad revolucionaria. La correa permite poner y quitar fácilmente el calzado.', 1, 1, 3, 'Blanco/Blanco/Vela/Negro'),
(115, 'Jordan MA2', 10, '2899.00', '26.50', 20, 'Rompe el status quo del calzado con el Jordan MA2. Confeccionado con una combinación de gamuza, cuero de plena flor y una variedad de textiles, este calzado cuenta con etiquetas no convencionales, micrográficos técnicos y bordes de espuma rústica para lograr un equilibrio entre lo nuevo y lo clásico. Fácil de poner y quitar, se usa con casi todo.', 1, 1, 3, 'Rojo'),
(116, 'Brantano', 1, '679.00', '27.00', NULL, 'Botas Marca Brantano de piel ', 7, 24, 3, 'Gris'),
(117, 'Brantano', 1, '679.00', '27.00', NULL, 'Botas Marca Brantano de piel ', 7, 24, 3, 'Negro'),
(118, 'Call It Spring', 3, '999.00', '25.00', NULL, 'Bota Call It Spring Sterna Casual', 7, 3, 2, 'Miel'),
(119, 'Call It Spring', 2, '999.00', '23.50', NULL, 'Bota Call It Spring Sterna Casual', 7, 10, 2, 'Miel'),
(120, 'Call It Spring', 2, '1500.00', '26.00', NULL, 'Bota Call It Spring Sterna Casual', 7, 10, 2, 'Negro'),
(121, 'RB', 1, '999.00', '23.00', NULL, 'Bota RBCOLLECTION exterior piel sintetica ', 7, 3, 2, 'Café'),
(122, 'Carlo Rossetti', 5, '1689.00', '24.50', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 25, 3, 'Negro'),
(123, 'Carlo Rossetti', 3, '1689.00', '28.00', NULL, 'Bota Carlo Rossetti Baku gamuza', 7, 25, 3, 'Miel'),
(124, 'Ozono', 5, '948.00', '25.00', 20, 'Bota alta capa de Ozono', 9, 26, 3, 'Café'),
(125, 'Ozono', 5, '948.00', '26.00', 10, 'Bota alta capa de Ozono', 9, 26, 3, 'Negro'),
(126, 'Ozono', 4, '1200.00', '26.50', 10, 'Bota alta capa de Ozono', 9, 26, 3, 'Negro'),
(127, 'Wonders', 3, '789.00', '24.50', NULL, 'Botas Largas Oregón Mujer ', 7, 8, 2, 'Miel'),
(128, 'Capricho OR', 3, '1200.00', '23.50', 30, 'Zapato de piso de piel.', 2, 9, 2, 'Azul'),
(129, 'Lucrecia Cordero', 2, '2000.00', '23.50', 0, 'Zapatilla con tacón numero10, con tirantes de piedra sircornia.', 3, 23, 2, 'Negro con Plata.'),
(130, 'Pietro Alessandro', 1, '2500.00', '24.50', 20, 'Zapatilla con taco de 11cm de piel.', 3, 23, 2, 'Dorado'),
(131, 'Dariana Fency', 3, '1200.00', '24.50', 10, 'Zapatilla de piel con sujetador al tobillo.', 3, 7, 2, 'Negor'),
(132, 'D´Crístian', 5, '999.00', '26.50', 10, 'Zapatilla con plataforma tacón de 10cm con flores.', 3, 26, 2, 'Café'),
(133, 'Deportivo Serraje', 3, '1300.00', '25.50', 0, 'DEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\nDEPORTIVO DE SERRAJE CON PLATAFORMA. DETALLE DE PESPUNTES, TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\n', 1, 13, 4, 'Marrón Arena'),
(134, 'Deportivo Combinado', 2, '1500.00', '25.50', 5, 'DEPORTIVO EN COMBINACIÓN DE MATERIALES. SUELA EN CONTRASTE DE COLOR. TIRADOR TRASERO. CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 13, 4, 'Beige'),
(135, 'Deportivo Combinado', 3, '1500.00', '23.50', 5, 'DEPORTIVO EN COMBINACIÓN DE MATERIALES. SUELA EN CONTRASTE DE COLOR. TIRADOR TRASERO. CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 13, 4, 'Negro'),
(136, 'Deportivo Plataforma Piel', 3, '1499.00', '25.50', 5, 'DEPORTIVO ABOTINADO DE PIEL CON PLATAFORMA. TIRADOR TRASERO Y CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 20, 2, 'Blanco'),
(137, 'Deportivas Canvas', 2, '600.00', '23.50', NULL, 'DETALLE DE PESPUNTES. TIRADOR TRASERO. CIERRE MEDIANTE CORDONES.\r\nPLANTILLA TÉCNICA FLEXIBLE DE ESPUMA COMPUESTA DE POLIURETANO, DISEÑADA PARA OFRECER UN MAYOR CONFORT.', 1, 4, 4, 'Crudo'),
(138, 'Deportivo Contraste', 2, '800.00', '22.50', 5, 'DEPORTIVO EN COMBINACIÓN DE MATERIALES Y DETALLES EN CONTRASTE DE COLOR. CIERRE MEDIANTE CORDONES.', 1, 12, 4, 'Blanco'),
(139, 'Zapato Tacón Destalonado Brillos', 4, '1499.00', '23.50', NULL, 'ZAPATO DE TACÓN DESTALONADO CON DETALLE DE BRILLOS. ESCOTE Y TALÓN CUADRADOS. ACABADO EN PUNTA ALARGADA.', 2, 3, 4, 'Negro'),
(140, 'Zapato Tacón Destalonado Brillos', 4, '1499.00', '24.50', NULL, 'ZAPATO DE TACÓN DESTALONADO CON DETALLE DE BRILLOS. ESCOTE Y TALÓN CUADRADOS. ACABADO EN PUNTA ALARGADA.', 2, 3, 4, 'Negro'),
(141, 'Zapato Tacón Destalonado Brillos', 4, '1499.00', '23.50', NULL, 'ZAPATO DE TACÓN DESTALONADO CON DETALLE DE BRILLOS. ESCOTE Y TALÓN CUADRADOS. ACABADO EN PUNTA ALARGADA.', 2, 3, 4, 'Oro'),
(142, 'Zapato Tacón Tejido', 2, '999.00', '22.50', NULL, 'ZAPATO TACÓN TEJIDO\r\nZAPATO DE TACÓN TIPO SALÓN DE TEJIDO. ACABADO EN PUNTA.', 2, 4, 4, 'Rosa Fluorescente'),
(148, 'Kansas Refill', 6, '3500.00', '26.50', 5, 'Zapato de vestir con cordones, con perforaciones en lateral.', 2, 21, 4, 'Negro'),
(149, 'Harry Refill', 8, '2500.00', '24.50', 0, 'Zapato de vestir para caballero con cordones al tono.', 2, 26, 4, 'Negro'),
(150, 'Boston Refill', 2, '990.00', '26.00', NULL, 'Zapato de vestir con cordones.', 2, 21, 4, 'Negro'),
(151, 'Cavana Red', 2, '1348.00', '26.00', 15, 'Zapato carpet de piel.', 2, 21, 4, 'Negro'),
(152, 'Leon', 3, '980.00', '27.00', 0, 'Zapato casual de gamuza cafe ferrero ', 2, 25, 4, 'Café'),
(153, 'Leon', 3, '980.00', '26.50', 10, 'Zapato casual de gamuza negro.', 2, 25, 4, 'Negro'),
(154, 'Leon', 3, '980.00', '10.00', NULL, 'Zapato casual de gamuza color gris.', 2, 25, 4, 'Gris'),
(155, 'Derby', 2, '2879.00', '26.00', 20, 'Zapato dervy pikolinos piel', 2, 21, 4, 'Negro'),
(156, 'Derby Dockers', 4, '1079.00', '26.00', 20, 'Zapato derby Docker de piel.', 2, 25, 4, 'Café'),
(157, 'Alpargata', 4, '719.00', '25.50', 20, 'Zapato perry ellis.', 2, 21, 4, 'Negro'),
(158, 'Oxford', 5, '1079.00', '25.00', 20, 'Zapato oxford jbe de piel', 2, 22, 4, 'Negro'),
(159, 'Cavana Red', 2, '1348.00', '26.00', 15, 'Zapato carpet de piel.', 2, 21, 4, 'Negro'),
(160, 'Leon', 3, '980.00', '27.00', 0, 'Zapato casual de gamuza cafe ferrero ', 2, 25, 4, 'Café'),
(161, 'Leon', 3, '980.00', '26.50', 10, 'Zapato casual de gamuza negro.', 2, 25, 4, 'Negro'),
(162, 'Leon', 3, '980.00', '10.00', NULL, 'Zapato casual de gamuza color gris.', 2, 25, 4, 'Gris'),
(163, 'Derby', 2, '2879.00', '26.00', 20, 'Zapato dervy pikolinos piel', 2, 21, 4, 'Negro'),
(164, 'Derby Dockers', 4, '1079.00', '26.00', 20, 'Zapato derby Docker de piel.', 2, 25, 4, 'Café'),
(165, 'Alpargata', 4, '719.00', '25.50', 20, 'Zapato perry ellis.', 2, 21, 4, 'Negro'),
(166, 'Oxford', 5, '1079.00', '25.00', 20, 'Zapato oxford jbe de piel', 2, 22, 4, 'Negro'),
(167, 'Guess', 2, '1899.00', '27.50', NULL, 'Tenis Guees para hombre GMBERNINI-N', 2, 25, 3, 'Negro/Verde Olivo/Blanco '),
(168, 'New', 4, '1799.00', '28.50', 5, 'Tenis New Blance para hombre', 1, 9, 4, 'Amarillo'),
(169, 'Caterpillar ', 3, '3599.00', '30.00', 10, 'Tenis caterpillar oara hombre caterpillar p71.\r\n', 1, 23, 3, 'Negro'),
(170, 'Adidas Originals', 5, '1999.00', '28.00', NULL, 'Tenis Adidas Originals para Hombre U_Path Run.\r\n', 1, 2, 3, 'Negro'),
(171, 'L222Mg', 1, '999.00', '25.50', 20, 'Tenis Levi\'S para Hombre L228101Mg.\r\n', 1, 8, 3, 'Verde'),
(172, 'DC', 3, '639.00', '25.00', NULL, 'Tenis DC Shoes para hombre Flash TX.\r\n', 4, 9, 3, 'Rojo'),
(173, 'Onitsuka', 4, '2299.00', '29.00', NULL, 'Tenis Onitsuka para Hombre Mexico 66.\r\n', 4, 9, 4, 'Blanco'),
(174, 'Champion', 2, '2239.00', '29.00', 20, 'Tenis Champion para hombre Cp101168m.\r\n', 1, 19, 4, 'Negro'),
(175, 'Converse Chuck', 8, '1099.00', '30.00', NULL, 'Tenis Converse Chuck Taylor All Star para hombre.\r\n', 4, 9, 3, 'Negro/Azul/Blanco '),
(176, 'Coq Soportif', 2, '1199.00', '25.50', 20, 'Tenis Le Coq Sportif para hombre 2020339 con logotipo.\r\n', 1, 14, 4, 'Azul Rey '),
(177, 'Lisa', 5, '4526.00', '14.00', 20, 'Zapato  en Botita lisa Andanenes piel para niña.\r\n', 2, 6, 1, 'Fucsia'),
(178, 'Lisa', 6, '2506.00', '12.00', 20, 'Zapato en Botita lisa Andanenes piel para niña.', 2, 10, 1, 'Beige'),
(179, 'Maty Jane', 4, '3433.00', '17.00', NULL, 'Mary Jane lisa Mon Caramel para niña', 2, 26, 1, 'Blanco'),
(180, 'Balerina', 1, '4596.00', '21.00', 5, 'Balerina lisa Piquenique para niña.\r\n', 2, 10, 1, 'Crema'),
(181, 'Bublle', 4, '2795.00', '15.00', 20, '\r\nTenis Bubble Gummers Luck para niña.\r\n', 1, 13, 1, 'Azul Marino'),
(182, 'Nike Casuss', 1, '2361.00', '15.00', 5, 'Tenis Nike casual.\r\n\r\n', 1, 1, 1, 'Blanco'),
(183, 'Air Max', 2, '1319.00', '12.00', 20, 'Tenis Nike casual\r\n', 1, 1, 1, 'Blanco'),
(184, 'Ontare', 4, '1099.00', '11.00', NULL, 'Tenis K-Swiss Ontare de niña\r\n', 1, 9, 1, 'Rosa '),
(185, 'Lotto', 2, '5961.00', '12.00', 30, 'Tenis Lotto de niña BANGER.\r\n', 1, 9, 1, 'Rosa'),
(186, 'SPERRY', 2, '1499.00', '10.50', NULL, 'Mocasines con cintillos Niño', 2, 21, 1, 'Café'),
(187, 'Choclo', 4, '5925.00', '11.00', 30, 'Zapato choclo para niño coloso 6001.\r\n', 2, 3, 1, 'Café'),
(188, 'Plamgo', 6, '2581.00', '20.00', NULL, 'Zapato vestir niño azul plumbago piel café.\r\n', 2, 25, 1, 'Café '),
(189, 'Plamgo', 5, '1235.00', '18.00', 5, 'Zapato para niño audaz 159302q.\r\n', 2, 9, 1, 'Café Claro'),
(190, 'Flufy', 2, '1258.00', '22.00', 10, 'Choclo Flufy Café para Niño Chabelo.\r\n', 2, 21, 1, 'Café'),
(191, 'Andanenes', 3, '2588.00', '14.00', NULL, 'Botita para niño de Piel Natural Azul.\r\n\r\n', 2, 10, 1, 'Azul Cobalto'),
(192, 'Sperry', 1, '5896.00', '23.50', 5, 'Botita de Piel Natural Marino.\r\n\r\n', 2, 8, 1, 'Azul Cobalto'),
(193, 'Elefante', 2, '4523.00', '20.00', 20, 'Sandalia lisa Elefante piel para niño.\r\n\r\n', 14, 9, 1, 'Beige'),
(194, 'Plamgo', 5, '2381.00', '13.00', 5, '\r\nBotita de niño con Estampado de avión en Piel Natural.\r\n', 7, 9, 1, 'Azul Lavanda '),
(195, 'Sperry', 1, '5631.00', '14.00', 20, 'Andatech zapato Deportivo .\r\n\r\n', 2, 14, 1, 'Azul'),
(196, 'Stride', 3, '1531.00', '14.00', NULL, 'Sandalia lisa Stride Rite para niño.\r\n\r\n', 14, 9, 1, 'Café'),
(197, 'Lgor', 1, '3125.00', '16.00', 20, 'Sandalia lisa Igor para niño.\r\n\r\n', 14, 10, 1, 'Azul Marino '),
(198, 'Camper', 1, '1080.00', '18.50', 20, 'Sandalia lisa Camper para niño.\r\n\r\n', 14, 18, 1, 'Verde'),
(199, 'Elefante', 3, '2369.00', '19.00', 0, 'Sandalia lisa Elefante piel para niño.\r\n', 14, 10, 1, 'Azul'),
(200, 'Mon', 2, '3189.00', '15.00', NULL, 'Sandalia Mon Caramel para niño.\r\n', 14, 16, 1, 'Café'),
(201, 'Dilan', 1, '2593.00', '18.00', 20, 'Tenis Disney Dilan para niño.\r\n\r\n', 14, 10, 1, 'Azul'),
(202, 'Mon', 3, '596.00', '14.50', NULL, 'Pantufla lisa Mon Caramel para niña.\r\n\r\n\r\n', 25, 23, 1, 'Amarillo'),
(203, 'PJ', 1, '3125.00', '11.50', 20, 'Pantufla PJ Masks para niño.\r\n\r\n\r\n', 25, 10, 1, 'Verde'),
(204, 'Nici', 2, '1080.00', '14.50', 20, 'Pantuflas Nici Tigre Dientes de sable.\r\n\r\n\r\n', 25, 15, 1, 'Gris'),
(205, 'Elefante', 5, '1550.00', '15.50', 5, 'Pantuflas Pingüino Frizzy Nice.\r\n\r\n', 25, 10, 1, 'Negro con Amarillo'),
(206, 'Hot Potatoes', 8, '3189.00', '15.50', NULL, 'Pantugfla HTDALARNA para niño.\r\n\r\n', 25, 16, 1, 'Multicolor '),
(207, 'DilanTb', 2, '2593.00', '12.50', 20, 'Pantuflas para niño\r\n\r\n', 25, 10, 1, 'Verde Soldado');

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
('2021-07-26', '2324.00', 9, 6),
('2021-07-29', '1500.00', 10, 1),
('2021-07-29', '2500.00', 11, 3),
('2021-08-09', '6500.00', 12, 2),
('2021-07-30', '7800.00', 13, 1),
('2021-08-08', '6500.00', 14, 7),
('2021-07-01', '2528.00', 15, 5),
('2020-07-08', '2528.00', 16, 5),
('2020-07-01', '2528.00', 17, 1),
('2020-07-08', '899.00', 18, 1),
('2021-07-29', '1000.00', 19, 1),
('2021-07-28', '10.00', 20, 1),
('2021-07-22', '2528.00', 21, 1),
('2021-07-21', '5.00', 22, 9),
('2021-07-26', '2324.00', 23, 5),
('2021-07-29', '1500.00', 24, 5),
('2021-07-29', '2500.00', 25, 5),
('2021-08-09', '6500.00', 26, 5),
('2021-07-30', '7800.00', 27, 5),
('2021-08-08', '6500.00', 28, 5),
('2021-07-01', '2528.00', 29, 9),
('2020-07-08', '2528.00', 30, 9),
('2020-07-01', '2528.00', 31, 9),
('2020-07-08', '899.00', 32, 9),
('2021-07-29', '1000.00', 33, 9),
('2021-07-28', '10.00', 34, 9),
('2021-07-22', '2528.00', 35, 9),
('2021-07-21', '5.00', 36, 9),
('2021-07-26', '2324.00', 37, 9),
('2021-07-29', '1500.00', 38, 9),
('2021-07-29', '2500.00', 39, 9),
('2021-08-09', '6500.00', 40, 9),
('2021-07-30', '7800.00', 41, 9),
('2021-08-08', '6500.00', 42, 9),
('2021-07-01', '2528.00', 43, 9),
('2020-07-08', '2528.00', 44, 9),
('2020-07-01', '2528.00', 45, 9),
('2020-07-08', '899.00', 46, 9),
('2021-07-29', '1000.00', 47, 9),
('2021-07-28', '10.00', 48, 9),
('2021-07-22', '2528.00', 49, 9),
('2021-07-21', '5.00', 50, 9),
('2021-07-26', '2324.00', 51, 9),
('2021-07-29', '1500.00', 52, 9),
('2021-07-29', '2500.00', 53, 9),
('2021-08-15', '1000.00', 54, 3),
('2021-07-14', '2528.00', 55, 3),
('2021-07-14', '2528.00', 374, 3),
('2020-07-23', '2528.00', 375, 3),
('2020-07-15', '2528.00', 376, 1),
('2020-07-28', '899.00', 377, 3),
('2021-07-19', '1000.00', 378, 4),
('2021-07-18', '10.00', 379, 6),
('2021-07-12', '2528.00', 380, 5),
('2021-07-11', '5.00', 381, 5),
('2021-07-16', '2324.00', 382, 6),
('2021-07-19', '1500.00', 383, 1),
('2021-07-19', '2500.00', 384, 3),
('2021-08-29', '6500.00', 385, 2),
('2021-07-20', '7800.00', 386, 1),
('2021-08-28', '6500.00', 387, 7),
('2021-07-11', '2528.00', 388, 5),
('2020-07-28', '2528.00', 389, 5),
('2020-07-21', '2528.00', 390, 1),
('2020-07-08', '899.00', 391, 1),
('2021-07-29', '1000.00', 392, 1),
('2021-07-23', '10.00', 393, 1),
('2021-07-24', '2528.00', 394, 1),
('2021-07-25', '5.00', 395, 9),
('2021-07-26', '2324.00', 396, 5),
('2021-07-19', '1500.00', 397, 5),
('2021-07-09', '2500.00', 398, 5),
('2021-08-06', '6500.00', 399, 5),
('2021-07-20', '7800.00', 400, 5),
('2021-08-10', '6500.00', 401, 5),
('2021-08-10', '2528.00', 402, 9),
('2020-08-13', '2528.00', 403, 9),
('2020-08-06', '2528.00', 404, 9),
('2020-08-13', '899.00', 405, 9),
('2021-08-07', '1000.00', 406, 9),
('2021-08-08', '10.00', 407, 9),
('2021-08-03', '2528.00', 408, 9),
('2021-08-15', '5.00', 409, 9),
('2021-08-15', '2324.00', 410, 9),
('2021-08-15', '1500.00', 411, 9),
('2021-08-14', '2500.00', 412, 9),
('2021-08-14', '6500.00', 413, 9),
('2021-08-14', '7800.00', 414, 9),
('2021-07-14', '6500.00', 415, 9),
('2021-08-01', '2528.00', 416, 9),
('2020-08-08', '2528.00', 417, 9),
('2020-08-01', '2528.00', 418, 9),
('2020-08-08', '899.00', 419, 9),
('2021-08-13', '1000.00', 420, 9),
('2021-08-10', '10.00', 421, 9),
('2021-08-13', '2528.00', 422, 9),
('2021-06-13', '5.00', 423, 9),
('2021-03-26', '2324.00', 424, 9),
('2021-02-24', '1500.00', 425, 9),
('2021-06-29', '2500.00', 426, 9),
('2021-03-01', '2528.00', 427, 3),
('2020-06-08', '2528.00', 428, 3),
('2020-12-01', '2528.00', 429, 1),
('2020-12-08', '899.00', 430, 3),
('2021-04-29', '1000.00', 431, 4),
('2021-04-28', '10.00', 432, 6),
('2021-06-22', '2528.00', 433, 5),
('2021-06-21', '5.00', 434, 5),
('2021-07-26', '2324.00', 435, 6),
('2021-02-24', '1500.00', 436, 1),
('2021-07-29', '2500.00', 437, 3),
('2021-08-09', '6500.00', 438, 2),
('2021-07-30', '7800.00', 439, 1),
('2021-08-08', '6500.00', 440, 7),
('2021-07-01', '2528.00', 441, 5),
('2020-12-08', '2528.00', 442, 5),
('2020-12-01', '2528.00', 443, 1),
('2020-12-08', '899.00', 444, 1),
('2021-02-23', '1000.00', 445, 1),
('2021-05-28', '10.00', 446, 1),
('2021-05-22', '2528.00', 447, 1),
('2021-05-21', '5.00', 448, 9),
('2021-03-26', '2324.00', 449, 5),
('2021-03-29', '1500.00', 450, 5),
('2021-01-29', '2500.00', 451, 5),
('2021-04-09', '6500.00', 452, 5),
('2021-03-30', '7800.00', 453, 5),
('2021-02-08', '6500.00', 454, 5),
('2021-03-01', '2528.00', 455, 9),
('2020-12-08', '2528.00', 456, 9),
('2020-12-01', '2528.00', 457, 9),
('2020-12-08', '899.00', 458, 9),
('2021-03-29', '1000.00', 459, 9),
('2021-02-28', '10.00', 460, 9),
('2021-02-22', '2528.00', 461, 9),
('2021-07-21', '5.00', 462, 9),
('2021-03-26', '2324.00', 463, 9),
('2021-03-29', '1500.00', 464, 9),
('2021-03-29', '2500.00', 465, 9),
('2021-03-09', '6500.00', 466, 9),
('2021-03-30', '7800.00', 467, 9),
('2021-06-08', '6500.00', 468, 9),
('2021-06-01', '2528.00', 469, 9),
('2020-12-08', '2528.00', 470, 9),
('2020-12-01', '2528.00', 471, 9),
('2020-11-08', '899.00', 472, 9),
('2021-04-29', '1000.00', 473, 9),
('2021-07-28', '10.00', 474, 9),
('2021-04-22', '2528.00', 475, 9),
('2021-03-21', '5.00', 476, 9),
('2021-02-26', '2324.00', 477, 9),
('2021-03-29', '1500.00', 478, 9),
('2021-03-29', '2500.00', 479, 9);

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
  MODIFY `ID_Categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `ID_Colaborador` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `edad`
--
ALTER TABLE `edad`
  MODIFY `ID_Edad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Productos` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

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
  MODIFY `ID_Venta` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

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
