-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2021 a las 03:11:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbventaslaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `idarticulo` int(11) NOT NULL,
  `idcategoria` int(11) NOT NULL,
  `codigo` varchar(50) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(512) DEFAULT NULL,
  `imagen` varchar(50) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `codigo`, `nombre`, `stock`, `descripcion`, `imagen`, `estado`, `updated_at`, `created_at`) VALUES
(1, 3, 'MH00FRT16', 'Ferrero Rocher T16', 12, 'Ferrero Rocher de 16 Unidades', 'FerreroT16.jpeg', 'Activo', '2021-10-08 00:40:53', '2021-10-03 03:40:07'),
(2, 3, 'MH00FRT5', 'Ferrero Rocher T5', 8, 'Ferrero Rocher de 5 unidades', 'FerreroT5.jpeg', 'Inactivo', '2021-10-08 00:40:37', '2021-10-03 03:41:25'),
(4, 3, 'MH000FRT3', 'Ferrero Rocher T3', 4, 'Ferrero Rocher de 3 unidades', 'FerreroT3.jpeg', 'Activo', '2021-10-09 00:20:47', '2021-10-08 04:39:17'),
(5, 3, 'MH00RAFT6', 'Rafaello T6', 2, 'Rafaello Chocolate cubierto de coco 60G', 'rafaello t6.png', 'Activo', '2021-10-08 04:54:10', '2021-10-08 04:40:56'),
(6, 3, 'MH00BB', 'Bon o Bon', 60, 'Bon o bon pequeño, chocolate negro, fresa, vainilla', 'bonbon.jpg', 'Activo', '2021-10-08 05:01:46', '2021-10-08 04:52:35'),
(7, 3, 'MH00BBBG', 'Bon o Bon - Barra - GRANDE', 36, 'Barra Bon o Bon Grande', 'BBBG.jpeg', 'Activo', '2021-10-08 05:01:59', '2021-10-08 04:56:00'),
(8, 3, 'MH00ManiJ', 'Cashitas-Maní Japonés', 3, 'Cashitas, Maní Japonés', 'Cashitas MJ.gif', 'Activo', '2021-10-08 05:04:42', '2021-10-08 05:04:42'),
(9, 3, 'MH00HCCG', 'Hershey\'s Choco Cookies&Creme GIGANTE', 1, 'Tableta Gigante C&C', 'CCGigante.jpg', 'Activo', '2021-10-08 05:13:36', '2021-10-08 05:13:36'),
(10, 3, 'MH00HBCM', 'Hershey\'s Barra Chocolate Milk', 8, 'Barra chocolate Milk - Tradicional', 'hmc.jpg', 'Activo', '2021-10-08 05:16:59', '2021-10-08 05:16:59'),
(11, 3, 'MH00CNUGGET', 'Hershey\'s Chocolate Nugget', 270, 'Chocolates Nugget Hersheys, todos sabores', 'nugget hersheys.webp', 'Activo', '2021-10-08 05:21:02', '2021-10-08 05:21:02'),
(12, 3, 'MH00CHKISS', 'Hershey\'s Kisses', 230, 'Chocolate Kisses', 'kiss.jpg', 'Activo', '2021-10-09 00:20:47', '2021-10-08 05:22:42'),
(13, 5, 'mh00bgd100', 'Billetera Grande Dama', 2, 'Billetera de dama, portacelular, tarjetas y dinero', 'bg.jpg', 'Activo', '2021-10-08 15:34:17', '2021-10-08 15:34:17'),
(14, 5, 'MH00BND', 'Billetera normal dama', 5, 'Billetera de dama, normal.', NULL, 'Activo', '2021-10-08 15:34:54', '2021-10-08 15:34:54'),
(15, 5, 'MH00BDT', 'Billeteras Típicas', 2, 'Billetera Típica para dama', NULL, 'Activo', '2021-10-08 15:35:21', '2021-10-08 15:35:21'),
(16, 25, 'MH00EBCC', 'Estuche de Billetera para Caballero con cincho', 2, NULL, NULL, 'Activo', '2021-10-08 15:36:39', '2021-10-08 15:36:39'),
(17, 23, 'MH00RSC', 'Reloj simple Caballero -85', 5, 'Reloj de caballero simple', NULL, 'Activo', '2021-10-08 15:37:44', '2021-10-08 15:37:44'),
(18, 23, 'MH000RD195', 'Reloj Dama -195', 1, 'Reloj DAMA', NULL, 'Activo', '2021-10-08 16:30:55', '2021-10-08 16:30:55'),
(19, 10, 'MH000VFG', 'Vaso fruta giratorio', 6, 'Vaso acrílico de fruta giratorio', NULL, 'Activo', '2021-10-08 16:32:25', '2021-10-08 16:32:25'),
(20, 10, 'MH000VDino', 'Vaso Dinosaurio', 7, 'Vaso de dinosaurio, de juguete y sticker', NULL, 'Activo', '2021-10-08 16:33:14', '2021-10-08 16:33:14'),
(21, 22, 'MH000TOvej', 'Taza Ovejitas', 2, 'Taza con textos bíblicos', NULL, 'Activo', '2021-10-08 16:34:13', '2021-10-08 16:34:13'),
(22, 12, 'MH000ALMOP', 'Almohadas - Personaje', 23, 'Almohada de todo personaje niño', NULL, 'Activo', '2021-10-08 18:09:44', '2021-10-08 16:42:48'),
(23, 12, 'MH000AMVIC', 'Almohada Mamá - VIC', 12, 'Almohada día de la madre', NULL, 'Activo', '2021-10-08 16:44:47', '2021-10-08 16:44:47'),
(24, 12, 'MH000APVIC', 'Almohada Papá - VIC', 12, 'Almohada día del padre', NULL, 'Activo', '2021-10-08 16:45:22', '2021-10-08 16:45:22'),
(25, 6, 'MH000GMetPeq', 'Globo Metálico 8 pulg (Pequeño)', 18, 'Globo metálico de 8 Pulgadas,  toda ocasión y forma', 'GM 8 P.jpg', 'Activo', '2021-10-08 18:24:58', '2021-10-08 18:24:58'),
(26, 3, 'MH000GMetMed', 'Globo Metálico 12 Pulg - Mediano', 21, 'Globo metálico de 12 pulgadas, toda ocasión y forma', 'GM 12 P.jpg', 'Activo', '2021-10-09 00:20:47', '2021-10-08 18:27:25'),
(27, 6, 'MH000GMetGd', 'Globo metálico  18 Pulg - Grande', 44, 'Globo metálico de 18 pulgadas, toda ocasión y forma. CH 30.00 SH 20.00', 'GM 18 P.png', 'Activo', '2021-10-08 20:45:26', '2021-10-08 18:30:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(256) DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `condicion`, `updated_at`, `created_at`) VALUES
(3, 'Chocolates', 'Todo tipo y marca de chocolates.', 1, '2021-10-08 04:28:43', '2021-10-08 00:09:58'),
(4, 'Dulces', 'Todo tipo de dulces, gomitas, etc.', 1, '2021-10-08 04:29:45', '2021-10-08 04:29:45'),
(5, 'Carteras', 'Todo tipo de carteras', 1, '2021-10-08 05:31:52', '2021-10-08 05:31:52'),
(6, 'Globos', 'Toda clase de Globos, con o sin Helio', 1, '2021-10-08 05:32:08', '2021-10-08 05:32:08'),
(7, 'Papel', 'Todo tipo de papel', 1, '2021-10-08 05:32:35', '2021-10-08 05:32:35'),
(8, 'Cajas Cubo', 'Cajas tipo Cubo - Blancas y Kraft', 1, '2021-10-08 05:33:18', '2021-10-08 05:33:18'),
(9, 'Juguetes', 'Todo tipo de Juguete para niños', 1, '2021-10-08 05:33:46', '2021-10-08 05:33:46'),
(10, 'Recipientes', 'Vídrio, Plástico, acrílico', 1, '2021-10-08 05:34:13', '2021-10-08 05:34:13'),
(11, 'Peluches', 'Todo tamaño', 1, '2021-10-08 05:34:32', '2021-10-08 05:34:32'),
(12, 'Almohadas', 'Toda clase de almohadas', 1, '2021-10-08 05:34:47', '2021-10-08 05:34:47'),
(13, 'Tarjetas', 'Toda clase y ocasión', 1, '2021-10-08 05:35:16', '2021-10-08 05:35:16'),
(14, 'Cosméticos', 'Todo tipo de Cosméticos', 1, '2021-10-08 05:35:33', '2021-10-08 05:35:33'),
(15, 'Bolsa de Regalo', 'Bolas de regalo de todo tamaño y  material', 1, '2021-10-08 14:37:37', '2021-10-08 14:37:37'),
(16, 'Arreglos Florales', 'Todo el material para arreglos florales', 1, '2021-10-08 14:39:35', '2021-10-08 14:39:35'),
(17, 'Bases Arreglos', 'Todo tipo de bases para arreglos florales y de globos', 1, '2021-10-08 14:40:40', '2021-10-08 14:40:40'),
(18, 'Arreglos de Globos', 'Todos los arreglos de globos y sus materiales', 1, '2021-10-08 14:41:05', '2021-10-08 14:41:05'),
(19, 'Fiesta', 'Todo tipo de  Adornos para fiesta', 1, '2021-10-08 14:43:35', '2021-10-08 14:43:35'),
(20, 'Cerámica', 'Todo tipo de Cerámica', 1, '2021-10-08 14:44:22', '2021-10-08 14:44:22'),
(21, 'Porta fotos', 'Todos los portafotos de diferentes tamaños', 1, '2021-10-08 14:46:09', '2021-10-08 14:46:09'),
(22, 'Cristalería', 'Todo en Cristalería', 1, '2021-10-08 14:47:01', '2021-10-08 14:47:01'),
(23, 'Relojes', 'Toda clase de relojes, dama y caballero', 1, '2021-10-08 15:25:03', '2021-10-08 15:25:03'),
(24, 'Bisutería', 'Cadenas, aretes, pulseras.', 1, '2021-10-08 15:25:31', '2021-10-08 15:25:31'),
(25, 'Estuches Ocasión', 'Estuches para caballero y dama, reloj, billetera.', 1, '2021-10-08 15:26:26', '2021-10-08 15:26:26'),
(26, 'Fragancias', 'Lociones, cremas', 1, '2021-10-08 15:27:31', '2021-10-08 15:27:31'),
(27, 'Llaveros', 'Todos', 1, '2021-10-08 15:29:34', '2021-10-08 15:29:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ingreso`
--

CREATE TABLE `detalle_ingreso` (
  `iddetalle_ingreso` int(11) NOT NULL,
  `idingreso` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_compra` decimal(11,2) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_ingreso`
--

INSERT INTO `detalle_ingreso` (`iddetalle_ingreso`, `idingreso`, `idarticulo`, `cantidad`, `precio_compra`, `precio_venta`, `updated_at`, `created_at`) VALUES
(3, 2, 1, 12, '85.00', '120.00', '2021-10-08 04:20:45', '2021-10-08 04:20:45'),
(4, 3, 4, 6, '13.90', '20.00', '2021-10-08 04:42:50', '2021-10-08 04:42:50'),
(5, 3, 5, 3, '21.00', '35.00', '2021-10-08 04:42:50', '2021-10-08 04:42:50'),
(6, 4, 6, 20, '1.97', '2.50', '2021-10-08 04:59:03', '2021-10-08 04:59:03'),
(7, 4, 7, 24, '2.78', '5.00', '2021-10-08 04:59:03', '2021-10-08 04:59:03'),
(8, 5, 6, 40, '1.90', '2.50', '2021-10-08 05:09:15', '2021-10-08 05:09:15'),
(9, 5, 7, 12, '3.00', '5.00', '2021-10-08 05:09:15', '2021-10-08 05:09:15'),
(10, 5, 8, 3, '9.60', '12.00', '2021-10-08 05:09:15', '2021-10-08 05:09:15'),
(11, 6, 9, 1, '24.00', '40.00', '2021-10-08 05:29:41', '2021-10-08 05:29:41'),
(12, 6, 11, 270, '0.50', '1.00', '2021-10-08 05:29:41', '2021-10-08 05:29:41'),
(13, 6, 10, 8, '7.50', '70.00', '2021-10-08 05:29:41', '2021-10-08 05:29:41'),
(14, 6, 12, 270, '0.00', '0.50', '2021-10-08 05:29:41', '2021-10-08 05:29:41'),
(15, 7, 13, 3, '100.00', '165.00', '2021-10-08 16:40:29', '2021-10-08 16:40:29'),
(16, 8, 22, 24, '25.00', '50.00', '2021-10-08 16:49:00', '2021-10-08 16:49:00'),
(17, 9, 23, 12, '20.00', '50.00', '2021-10-08 16:50:26', '2021-10-08 16:50:26'),
(18, 9, 24, 12, '20.00', '50.00', '2021-10-08 16:50:26', '2021-10-08 16:50:26'),
(19, 10, 20, 7, '45.00', '60.00', '2021-10-08 18:12:37', '2021-10-08 18:12:37'),
(20, 10, 19, 6, '45.00', '60.00', '2021-10-08 18:12:37', '2021-10-08 18:12:37'),
(21, 11, 21, 8, '25.00', '40.00', '2021-10-08 18:17:25', '2021-10-08 18:17:25'),
(22, 11, 17, 7, '38.00', '85.00', '2021-10-08 18:17:25', '2021-10-08 18:17:25'),
(23, 11, 18, 4, '110.00', '195.00', '2021-10-08 18:17:25', '2021-10-08 18:17:25'),
(24, 12, 13, 2, '65.00', '100.00', '2021-10-08 18:21:16', '2021-10-08 18:21:16'),
(25, 12, 14, 5, '55.00', '95.00', '2021-10-08 18:21:16', '2021-10-08 18:21:16'),
(26, 12, 16, 2, '85.00', '120.00', '2021-10-08 18:21:16', '2021-10-08 18:21:16'),
(27, 12, 15, 2, '65.00', '95.00', '2021-10-08 18:21:16', '2021-10-08 18:21:16'),
(28, 13, 25, 18, '6.00', '8.00', '2021-10-08 18:33:04', '2021-10-08 18:33:04'),
(29, 13, 26, 22, '9.50', '13.00', '2021-10-08 18:33:04', '2021-10-08 18:33:04'),
(30, 13, 27, 45, '12.00', '30.00', '2021-10-08 18:33:04', '2021-10-08 18:33:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `iddetalle_venta` int(11) NOT NULL,
  `idventa` int(11) NOT NULL,
  `idarticulo` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `descuento` decimal(11,2) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`iddetalle_venta`, `idventa`, `idarticulo`, `cantidad`, `precio_venta`, `descuento`, `updated_at`, `created_at`) VALUES
(1, 1, 5, 1, '35.00', '0.00', '2021-10-08 04:44:12', '2021-10-08 04:44:12'),
(2, 2, 12, 20, '0.50', '0.00', '2021-10-08 18:09:44', '2021-10-08 18:09:44'),
(3, 2, 22, 1, '50.00', '0.00', '2021-10-08 18:09:44', '2021-10-08 18:09:44'),
(4, 3, 27, 1, '30.00', '0.00', '2021-10-08 20:45:26', '2021-10-08 20:45:26'),
(5, 4, 4, 2, '20.00', '0.00', '2021-10-09 00:20:47', '2021-10-09 00:20:47'),
(6, 4, 26, 1, '13.00', '0.00', '2021-10-09 00:20:47', '2021-10-09 00:20:47'),
(7, 4, 12, 20, '0.50', '0.00', '2021-10-09 00:20:47', '2021-10-09 00:20:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `idingreso` int(11) NOT NULL,
  `idproveedor` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) DEFAULT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`idingreso`, `idproveedor`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `estado`, `updated_at`, `created_at`) VALUES
(2, 6, 'Factura', 'B', '001258', '2021-10-07 22:20:45', '18.00', 'A', '2021-10-08 04:20:45', '2021-10-08 04:20:45'),
(3, 6, 'Factura', 'FAC R', '4310256', '2021-10-07 22:42:50', '18.00', 'A', '2021-10-08 04:42:50', '2021-10-08 04:42:50'),
(4, 7, 'Factura', 'T6', '54005', '2021-10-07 22:59:03', '18.00', 'A', '2021-10-08 04:59:03', '2021-10-08 04:59:03'),
(5, 7, 'Factura', 'T6', '53455', '2021-10-07 23:09:15', '18.00', 'A', '2021-10-08 05:09:15', '2021-10-08 05:09:15'),
(6, 6, 'Factura', '55484A', '258555', '2021-10-07 23:29:41', '18.00', 'A', '2021-10-08 05:29:41', '2021-10-08 05:29:41'),
(7, 10, 'Boleta', 'J', '57455', '2021-10-08 10:40:29', '18.00', 'A', '2021-10-08 16:40:29', '2021-10-08 16:40:29'),
(8, 6, 'Boleta', 'J', '57455', '2021-10-08 10:49:00', '18.00', 'A', '2021-10-08 16:49:00', '2021-10-08 16:49:00'),
(9, 12, 'Factura', 'AH', '2511101', '2021-10-08 10:50:26', '18.00', 'A', '2021-10-08 16:50:26', '2021-10-08 16:50:26'),
(10, 13, 'Ticket', 'A', '0', '2021-10-08 12:12:37', '18.00', 'A', '2021-10-08 18:12:37', '2021-10-08 18:12:37'),
(11, 11, 'Ticket', 'A', '8082', '2021-10-08 12:17:25', '18.00', 'A', '2021-10-08 18:17:25', '2021-10-08 18:17:25'),
(12, 11, 'Ticket', 'A', '0002', '2021-10-08 12:21:16', '18.00', 'A', '2021-10-08 18:21:16', '2021-10-08 18:21:16'),
(13, 14, 'Factura', 'A', '1252', '2021-10-08 12:33:04', '18.00', 'A', '2021-10-08 18:33:04', '2021-10-08 18:33:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$G8X/iqzWJUXBSHdQAjqDouR4ay3bJKsHLVgyd2hfIxctz4G3Zbr2i', '2021-10-07 21:42:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `idpersona` int(11) NOT NULL,
  `tipo_persona` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo_documento` varchar(20) DEFAULT NULL,
  `num_documento` varchar(15) DEFAULT NULL,
  `direccion` varchar(70) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `tipo_persona`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `updated_at`, `created_at`) VALUES
(5, 'Cliente', 'Luis Morales', 'DPI', '2388154470101', 'Ciudad', '54138870', 'luismo@gmail.com', '2021-10-08 00:12:11', '2021-10-08 00:12:11'),
(6, 'proveedor', 'NINOSHKA SOCIEDAD ANONIMA', 'NIT', '835178-3', 'Diagonal 3 Calzada Atanasio Tzul 43-33, Ciudad de Guatemala.', '2285-5555', 'ninoshkagt@gmail.com', '2021-10-08 04:34:28', '2021-10-08 04:19:44'),
(7, 'proveedor', 'TODO TERRENO - Comercializadora de productos imperial, S.A.', 'NIT', '10173681-9', 'KM. 117 Aldea Rio Chiquito, Usumatlán, Zacapa.', '79458897', NULL, '2021-10-08 04:33:05', '2021-10-08 04:33:05'),
(8, 'proveedor', 'CODISA - COMPAÑIA DISTRIBUIDORA, S.A.', 'NIT', '107727-9', 'Km. 28.5 Carretera CA-9 Dirección al sur Amatitlán, Guatemala.', '2245-4500', 'sac@codisa.co', '2021-10-08 04:36:22', '2021-10-08 04:36:22'),
(9, 'Cliente', 'Corte de Caja', 'DPI', '00001', 'DetallesMH', '58776843', 'detallesmh@gmail.com', '2021-10-08 05:30:50', '2021-10-08 05:30:50'),
(10, 'proveedor', 'Distribuidora Diamante', 'NIT', '0', '17 calle 3-07, Zona 1. Guatemala', '0', 'diamante@diamante.com', '2021-10-08 16:37:03', '2021-10-08 16:37:03'),
(11, 'proveedor', 'Distribuidora Los Dos', 'NIT', '0', '17 Calle, zona 1. Guatemala', '0', 'losdos@dos.com', '2021-10-08 16:38:14', '2021-10-08 16:38:14'),
(12, 'proveedor', 'VICTOR INTERNACIONAL, S.A.', 'NIT', '0', 'Zona 1, Guatemala', '0', 'victor@victor.com', '2021-10-08 16:49:35', '2021-10-08 16:49:35'),
(13, 'proveedor', 'Toys&Party', 'NIT', '0', 'zona 9, Guatemala.', '0', 'toys@party.com', '2021-10-08 18:10:57', '2021-10-08 18:10:57'),
(14, 'proveedor', 'Globo Centro', 'NIT', '0', 'Zona 4, Ciudad.', '0', 'globo@centro.com', '2021-10-08 18:31:12', '2021-10-08 18:31:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'admin@admin.com', NULL, '$2y$10$6/OKzkfd0YdKVjtP4CqequubSiGP0Zv1y1ZCZvYNTqap2tM0FiBEm', '9mXzw7BxwKKipF7AkPfYopL4E5jJZxb9pdsXLHIL1cU10lxb1GpJYvdNalio', '2021-09-24 20:54:43', '2021-09-24 20:54:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idventa` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `tipo_comprobante` varchar(20) NOT NULL,
  `serie_comprobante` varchar(7) NOT NULL,
  `num_comprobante` varchar(10) NOT NULL,
  `fecha_hora` datetime NOT NULL,
  `impuesto` decimal(4,2) NOT NULL,
  `total_venta` decimal(11,2) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idventa`, `idcliente`, `tipo_comprobante`, `serie_comprobante`, `num_comprobante`, `fecha_hora`, `impuesto`, `total_venta`, `estado`, `updated_at`, `created_at`) VALUES
(1, 5, 'Boleta', 'A', '0001', '2021-10-07 22:44:12', '18.00', '35.00', 'A', '2021-10-08 04:44:12', '2021-10-08 04:44:12'),
(2, 5, 'Ticket', 'A', '00002', '2021-10-08 12:09:44', '18.00', '60.00', 'A', '2021-10-08 18:09:44', '2021-10-08 18:09:44'),
(3, 9, 'Ticket', 'A', '0011', '2021-10-08 14:45:26', '18.00', '30.00', 'A', '2021-10-08 20:45:26', '2021-10-08 20:45:26'),
(4, 9, 'Ticket', 'B', '20100', '2021-10-08 18:20:47', '18.00', '63.00', 'A', '2021-10-09 00:20:47', '2021-10-09 00:20:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`idarticulo`),
  ADD KEY `fk_articulo_categoria_idx` (`idcategoria`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD PRIMARY KEY (`iddetalle_ingreso`),
  ADD KEY `fk_detalle_ingreso_idx` (`idingreso`),
  ADD KEY `fk_detalle_ingreso_articulo_idx` (`idarticulo`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`iddetalle_venta`),
  ADD KEY `fk_detalle_venta_articulo_idx` (`idarticulo`),
  ADD KEY `fk_detalle_venta_idx` (`idventa`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`idingreso`),
  ADD KEY `fk_ingreso_persona_idx` (`idproveedor`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`idpersona`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idventa`),
  ADD KEY `fk_venta_cliente_idx` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `idarticulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  MODIFY `iddetalle_ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `iddetalle_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `idingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `fk_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_ingreso`
--
ALTER TABLE `detalle_ingreso`
  ADD CONSTRAINT `fk_detalle_ingreso` FOREIGN KEY (`idingreso`) REFERENCES `ingreso` (`idingreso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_ingreso_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `fk_detalle_venta` FOREIGN KEY (`idventa`) REFERENCES `venta` (`idventa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_detalle_venta_articulo` FOREIGN KEY (`idarticulo`) REFERENCES `articulo` (`idarticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD CONSTRAINT `fk_ingreso_persona` FOREIGN KEY (`idproveedor`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`idcliente`) REFERENCES `persona` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
