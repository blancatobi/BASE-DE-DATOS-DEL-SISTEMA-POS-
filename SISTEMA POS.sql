-- Creación de la tabla roles
CREATE TABLE roles (
  id_rol INT NOT NULL,
  rol VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_rol)
);

INSERT INTO `roles` (`id_rol`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Jefe'),
(3, 'Codigos'),
(4, 'Admin_local'),
(5, 'Vendedor');

-- Creación de la tabla cliente
CREATE TABLE cliente (
  id_cliente INT NOT NULL,
  nombre_completo VARCHAR(100) NOT NULL,
  razon_social VARCHAR(50) NOT NULL,
  nit BIGINT(15) NOT NULL,
  tipo_identificacion VARCHAR(10) NOT NULL,
  documento INT NOT NULL,
  correo VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL, -- Modificado a varchar(20)
  direccion VARCHAR(50) NOT NULL,
  estado VARCHAR(50) NOT NULL,
  eliminado TINYINT(4) NOT NULL,
  eliminado_usuario VARCHAR(100) NOT NULL, -- Aumentado a varchar(100)
  eliminado_fecha DATETIME NOT NULL,
  PRIMARY KEY (id_cliente)
);

INSERT INTO `cliente` (`id_cliente`, `nombre_completo`, `razon_social`, `nit`, `tipo_identificacion`, `documento`, `correo`, `telefono`, `direccion`, `estado`, `eliminado`, `eliminado_usuario`, `eliminado_fecha`) VALUES
(1, 'Andrew Fajardo', 'Dickinbaus', 12345678901, 'CC', 1000620363, 'pachonandres721@gmail.com', '3123661254', 'Cra. 13a # 93 - 66', 'Inactivo', 0, '', '2023-10-20 16:55:45'),
(3, 'Andrew', 'Dickinbaus', 12345678901, 'CC', 1234567890, 'banc@gmail.com', '1234567890', 'Cll 93 # 72-71', 'Activo', 1, 'andrew', '2023-10-20 19:05:02'),
(4, 'Liplop', 'Dickinbaus', 1234567890, 'CC', 1234567890, 'banc@gmail.com', '1234567890', 'Cll 93 # 72-71', 'Activo', 1, 'andrew', '2023-10-20 19:40:57');

-- Creación de la tabla categorias
CREATE TABLE categorias (
  id_categoria INT NOT NULL,
  categoria VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_categoria)
);

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(1, 'comida'),
(2, 'ropa'),
(3, 'zapatos'),
(4, 'electronicos'),
(5, 'Cuidado personal'),
(7, 'libros'),
(8, 'muebles'),
(10, 'jugueteria'),
(11, 'Piñateria'),
(12, 'Bebe'),
(13, 'Chancla'),
(14, 'Bisuteria'),
(15, 'Maquillaje'),
(16, 'Flores'),
(17, 'Babuchas'),
(18, 'Aseo'),
(19, 'Humificadores'),
(20, 'Parlantes'),
(21, 'Peluches'),
(22, 'Almohadas'),
(23, 'Cobijas'),
(24, 'Gafas'),
(25, 'Gorras'),
(26, 'Tapetes'),
(27, 'Billeteras'),
(28, 'Maletas'),
(29, 'Lamparas'),
(30, 'Lana'),
(31, 'Sombrillas'),
(32, 'Base Tv'),
(33, 'Termos'),
(34, 'Sombreros'),
(35, 'Llaveros'),
(36, 'Balones'),
(37, 'Relojeria'),
(38, 'Cama perros'),
(39, 'Porcelana'),
(40, 'Sillas'),
(41, 'Plantillas'),
(42, 'Maquinas'),
(43, 'Sticker pared'),
(44, 'Ferreteria'),
(45, 'Jugueteria'),
(46, 'Aluminio'),
(47, 'Juego Cubiertos'),
(48, 'Floreros'),
(49, 'Plastico'),
(50, 'Cristaleria'),
(51, 'Melanina'),
(52, 'Platero'),
(53, 'Mascotas'),
(54, 'Flotadores'),
(55, 'Cortina Baño'),
(56, 'Loza porcelana'),
(57, 'Cacharro'),
(58, 'Acero'),
(59, 'Canguros');

-- Creación de la tabla proveedores
CREATE TABLE proveedores (
  id_proveedor INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  razon_social VARCHAR(50) NOT NULL,
  nit INT NOT NULL,
  tipo_documento VARCHAR(30) NOT NULL,
  documento INT NOT NULL,
  correo VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL, -- Modificado a varchar(20)
  eliminado INT NOT NULL,
  eliminado_usuario VARCHAR(100) NOT NULL, -- Aumentado a varchar(100)
  eliminado_fecha DATETIME NOT NULL,
  PRIMARY KEY (id_proveedor)
);

INSERT INTO `proveedores` (`id_proveedor`, `nombre`, `apellido`, `razon_social`, `nit`, `tipo_documento`, `documento`, `correo`, `telefono`, `eliminado`, `eliminado_usuario`, `eliminado_fecha`) VALUES
(1, 'Andrew', 'Fajardo', 'Dickinbaus', 123456, 'CC', 12321, 'daddy555@hotmail.com', '3123661254', 0, '', '0000-00-00 00:00:00'),
(2, 'Andrea', 'banc', 'Dickinbaus', 1234564, 'CC', 987654321, 'martha@hotmail.com', '3123442976', 1, '', '2023-10-21 00:53:38'),
(3, 'banc', 'banc', 'Dickinbaus', 1234567890, 'CC', 1234567890, 'banc@gmail.com', '1234567890', 0, '', '0000-00-00 00:00:00');

-- Creación de la tabla locales
CREATE TABLE locales (
  id_local INT NOT NULL,
  nombre TEXT NOT NULL,
  direccion VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL, -- Modificado a varchar(20)
  ciudad VARCHAR(50), -- Nuevo campo 'ciudad'
  PRIMARY KEY (id_local)
);

INSERT INTO `locales` (`id_local`, `nombre`, `direccion`, `telefono`, `ciudad`) VALUES
(3, 'Multitodo', 'cll 10 # 2-30', '3123661254', 'Choconta'),
(4, 'Remates Alex', 'cll 10 # 2-31', '3123442976', 'Villapizon');

-- Creación de la tabla usuarios
CREATE TABLE usuarios (
  id_usuario INT NOT NULL,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  usuarios_id_rol INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  lname VARCHAR(50) NOT NULL,
  usuarios_id_local INT NOT NULL,
  creditos INT NOT NULL,
  tipo_documento VARCHAR(30) NOT NULL,
  documento INT NOT NULL,
  correo VARCHAR(50) NOT NULL,
  telefono VARCHAR(20) NOT NULL, -- Modificado a varchar(20)
  eliminado TINYINT(4) NOT NULL,
  eliminado_usuario VARCHAR(100) NOT NULL, -- Aumentado a varchar(100)
  eliminado_fecha DATETIME NOT NULL,
  PRIMARY KEY (id_usuario),
  CONSTRAINT usuarios_id_local FOREIGN KEY (usuarios_id_local) REFERENCES locales (id_local) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT usuarios_id_rol FOREIGN KEY (usuarios_id_rol) REFERENCES roles (id_rol) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `usuarios` (`id_usuario`, `username`, `password`, `usuarios_id_rol`, `name`, `lname`, `usuarios_id_local`, `creditos`, `tipo_documento`, `documento`, `correo`, `telefono`, `eliminado`, `eliminado_usuario`, `eliminado_fecha`) VALUES
(1, 'andrew', 'A-drew29.', 1, 'Andrew', 'H.', 3, 50000, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(2, 'angelica', 'A-drew29.', 1, 'Angelica', 'H.', 4, 100000, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(3, 'andrewcodigos', 'codigosAH2023*', 3, 'Andrew', 'God', 3, 0, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(4, 'angelicacodigos', 'codigosAH2023*', 3, 'Angélica', 'God', 3, 0, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(5, 'alexcodigos', 'alexcodigosAH2023*', 3, 'Alex', 'Jefe', 3, 0, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(6, 'adrianacodigos', 'adrianacodigosAH2023*', 3, 'Adriana', 'Jefe', 3, 0, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(7, 'ericacodigos', 'ericacodigosAH2023*', 3, 'Erica', 'Admin', 3, 0, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(10, 'erica', 'erica', 4, 'erica', 'erica', 3, 0, 'CC', 1234567890, 'erica@gmail.com', 1234567890, 0, '', '2023-10-20 18:19:32'),
(11, 'alice', 'alice', 5, 'alice', 'alice', 3, 0, 'CC', 987654321, 'alice@gmail.com', 987654321, 0, '', '2023-10-20 18:13:39'),
(14, '', '', 4, 'banc', 'banc', 3, 0, 'CC', 1234567890, 'banc@gmail.com', 1234567890, 0, '', '2023-10-20 18:50:05'),
(15, '', '', 5, 'banc', 'banc', 4, 0, 'CC', 1234567890, 'banc@gmail.com', 1234567890, 0, '', '0000-00-00 00:00:00'),
(16, 'adriana', 'adriana123', 2, 'Adriana', 'Jefe', 3, 0, '', 0, '', 0, 0, '', '0000-00-00 00:00:00'),
(17, 'ramon', 'ramon2023%%*', 1, 'Ramon', 'Admin', 3, 0, '', 0, '', 0, 0, '', '2023-11-01 00:00:00');

-- Creación de la tabla ventas

CREATE TABLE `registros_acceso` (
  `id_acceso` INT(10) NOT NULL,
  `fecha_hora` DATETIME NOT NULL,
  `username` VARCHAR(50) NOT NULL,
  `conteo_diario` int(10) NOT NULL,
  `ip_address` VARCHAR(50) NOT NULL,
  `user_agent` VARCHAR(225) NOT NULL,
  `dispositivo` VARCHAR(100) NOT NULL,
  `ubicacion` VARCHAR(255) NOT NULL,
  `resolution` VARCHAR(50) NOT NULL,
  `idioma` VARCHAR(50) NOT NULL,
  `registros_acceso_id_usuario` INT(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Creación de la tabla ventas
CREATE TABLE ventas (
  id_venta INT NOT NULL,
  fecha_venta DATE NOT NULL,
  total_venta INT NOT NULL,
  descuento INT NOT NULL,
  cambio INT NOT NULL,
  metodo_pago VARCHAR(30) NOT NULL,
  estado_factura VARCHAR(50) NOT NULL,
  nota VARCHAR(50), -- Nuevo campo 'nota'
  ventas_id_usuario INT(10) NOT NULL,
  ventas_id_cliente INT(10) NOT NULL,
  ventas_id_local INT(10) NOT NULL,
  eliminado INT(10) NOT NULL,
  eliminado_usuario VARCHAR(50) NOT NULL,
  eliminado_fecha DATETIME NOT NULL,
  PRIMARY KEY (id_venta),
  KEY ventas_id_usuario (ventas_id_usuario),
  KEY ventas_id_cliente (ventas_id_cliente),
  KEY ventas_id_local (ventas_id_local),
  FOREIGN KEY (ventas_id_usuario) REFERENCES usuarios(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ventas_id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (ventas_id_local) REFERENCES locales(id_local) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insertar datos en la tabla ventas
INSERT INTO `ventas` (
  `id_venta`, 
  `fecha_venta`, 
  `total_venta`, 
  `descuento`, 
  `cambio`, 
  `metodo_pago`, 
  `estado_factura`, 
  `ventas_id_usuario`, 
  `ventas_id_cliente`, 
  `ventas_id_local`, 
  `eliminado`, 
  `eliminado_usuario`, 
  `eliminado_fecha`
) VALUES
(33, '2023-10-28', 119000, 0, 0, 'Efectivo, Tarjeta debito', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(34, '2023-10-28', 261800, 0, 0, 'Tarjeta débito', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(35, '2023-10-28', 142800, 0, 10000, 'Efectivo, Tarjeta débito', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(36, '2023-10-28', 297500, 0, 70000, 'Efectivo, Tarjeta credito', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(37, '2023-10-30', 261800, 0, 0, 'Bancolombia', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(38, '2023-10-30', 347480, 0, 0, 'Bancolombia', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(39, '2023-10-30', 345100, 0, -344100, 'Efectivo', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(40, '2023-10-30', 202300, 0, 0, 'Efectivo', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(41, '2023-10-30', 202300, 0, 0, 'Efectivo', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(42, '2023-10-31', 595000, 0, 0, 'Efectivo', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(43, '2023-10-31', 142800, 0, 0, 'Efectivo', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00'),
(44, '2023-11-02', 142800, 0, 7200, 'Efectivo', 'pagado', 1, 1, 3, 0, '', '0000-00-00 00:00:00');

-- Creación de la tabla facturas
CREATE TABLE facturas (
  id_factura INT NOT NULL,
  fecha_emision DATE NOT NULL,
  fecha_pago DATE NOT NULL,
  facturas_id_venta INT DEFAULT NULL,
  PRIMARY KEY (id_factura),
  CONSTRAINT facturas_id_venta FOREIGN KEY (facturas_id_venta) REFERENCES ventas (id_venta) ON DELETE CASCADE,
  UNIQUE (facturas_id_venta)
);

INSERT INTO `facturas` (`id_factura`, `fecha_emision`, `fecha_pago`, `facturas_id_venta`) VALUES
(33, '2023-10-28', '2023-10-28', 33),
(34, '2023-10-28', '2023-10-28', 34),
(35, '2023-10-28', '2023-10-28', 35),
(36, '2023-10-28', '2023-10-28', 36),
(37, '2023-10-30', '2023-10-30', 37),
(38, '2023-10-30', '2023-10-30', 38),
(39, '2023-10-30', '2023-10-30', 39),
(40, '2023-10-30', '2023-10-30', 40),
(41, '2023-10-30', '2023-10-30', 41),
(42, '2023-10-31', '2023-10-31', 42),
(43, '2023-10-31', '2023-10-31', 43),
(44, '2023-11-02', '2023-11-02', 44);

-- Creación de la tabla descripcion_producto
CREATE TABLE descripcion_producto (
  id_descripcion INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  codigo VARCHAR(255) NOT NULL,
  ruta_imagen VARCHAR(255) NOT NULL,
  pais VARCHAR(50) NOT NULL,
  SKU INT NOT NULL,
  descripcion_id_categoria INT NOT NULL,
  PRIMARY KEY (id_descripcion),
  FOREIGN KEY (descripcion_id_categoria) REFERENCES categorias (id_categoria)
);

INSERT INTO `descripcion_producto` (`id_descripcion`, `nombre`, `codigo`, `ruta_imagen`, `pais`, `SKU`, `descripcion_id_categoria`) VALUES
(1, 'Gomas de sabor', '770555', ' /img/productos/dulces-mas-blanco.jpg', '770', 0, 1),
(2, 'Vestido blanco', '123', ' /img/productos/851843_47131-O5DJIZ.jpg', '', 0, 2),
(3, 'Peluche Olaf', '123456', '/img/productos/elsa.jpg', '', 0, 2),
(4, 'Almohada comodin', '2', '/img/productos/6345826_24911.jpg', '', 0, 2),
(2754, 'Vestido Rojo', '6', '/img/productos/5260002_20737.jpg', '', 0, 2),
(2755, 'Cobija verde', '7', '/img/productos/4716852_2439759.jpg', '', 0, 2),
(2756, 'Saco para dormir', '8', '/img/productos/7843308_4339.jpg', '', 0, 2),
(2757, 'Papas color rojo', '9', '/img/productos/9398713_34786.jpg', '', 0, 1),
(2759, 'Papas color blanco', '9', '/img/productos/9398711_34785.jpg', '', 0, 1),
(2760, 'Zapatos color negro', '12', '/img/productos/zapatillas-streetwear-unisex-cordones-negras-fashion.jpg', '', 0, 3),
(2761, 'Telefono color negro', '22', '/img/productos/3576506_65968.jpg', '', 0, 4),
(2762, 'Computador maleta', '123', '/img/productos/computadora-personal-3d-aspecto-vintage.jpg', '', 0, 4),
(2763, 'Desodorante Speed Stick Xtreme Ultra', '7509546063706', '/img/productos/comprar-desodorante-speed-stick-xtreme-ultra-aerosol-frasco-con-150-ml.jpg', '750', 0, 5),
(2764, 'Celular Mi A1 Color Negro', '3123661254', '/img/productos/3291751_1.jpg', '', 0, 4),
(2766, 'Globo de color azul', '12897316287', '/img/productos/3392092_58227.jpg', '', 0, 4),
(2784, 'Pantalla 29 Pulgadas', '6902557181249', '/img/productos/pantalla.jpg', '690', 0, 4),
(2785, 'Tijeras', '6907968451855', '/img/productos/11060530_47433.jpg', '690', 0, 10),
(2790, 'Vaso bonito', '6905297481985', '/img/productos/vaso.jpg', '690', 0, 1),
(2795, 'Teclado', '7701375568209', '/img/productos/default.png', '770', 0, 4),
(2796, 'Prueba', '123123123123', '/img/productos/3392092_58227.jpg', '', 0, 1),
(2797, 'cuaderno Elsa', '0101', '/img/productos/imagen_2023-10-20_115903517.png', '', 0, 7);

-- Creación de la tabla productos
CREATE TABLE productos (
  id_productos INT NOT NULL,
  precio_venta INT NOT NULL,
  impuesto INT NOT NULL,
  cantidad INT NOT NULL,
  precioantesiva INT NOT NULL,
  ganancianetaventa INT NOT NULL,
  ganancianetacantidad INT NOT NULL,
  eliminado INT NOT NULL,
  eliminado_usuario VARCHAR(20) NOT NULL,
  descuento INT NOT NULL,
  tipo_descuento INT NOT NULL,
  precio_condescuento INT NOT NULL,
  productos_id_descripcion INT NOT NULL,
  PRIMARY KEY (id_productos),
  FOREIGN KEY (productos_id_descripcion) REFERENCES descripcion_producto(id_descripcion)
);

INSERT INTO `productos` (`id_productos`, `precio_venta`, `impuesto`, `cantidad`, `precioantesiva`, `ganancianetaventa`, `ganancianetacantidad`, `eliminado`, `eliminado_usuario`, `descuento`, `tipo_descuento`, `precio_condescuento`, `productos_id_descripcion`) VALUES
(1, 2500, 5, 100, 2381, 1381, 138100, 0, '', 0, 0, 0, 1),
(2, 2000, 19, 10, 0, 0, 0, 0, '', 0, 0, 0, 2),
(3, 50000, 19, 23, 0, 0, 0, 0, '', 0, 0, 0, 3),
(4, 120000, 19, 50, 0, 0, 0, 0, '', 0, 0, 0, 4),
(2754, 30000, 19, 100, 0, 0, 0, 0, '', 0, 0, 0, 2754),
(2755, 20000, 19, 20, 0, 0, 0, 0, '', 0, 1, 20000, 2755),
(2756, 80000, 19, 100, 0, 0, 0, 0, '', 0, 0, 0, 2756),
(2757, 4000, 19, 1000, 0, 0, 0, 0, '', 0, 0, 0, 2757),
(2759, 2500, 19, 1000, 0, 0, 0, 0, '', 0, 0, 0, 2759),
(2760, 70000, 19, 200, 0, 0, 0, 0, '', 0, 0, 0, 2760),
(2761, 700000, 19, 20, 0, 0, 0, 0, '', 0, 0, 0, 2761),
(2762, 2000000, 19, 50, 0, 0, 0, 0, '', 30, 2, 2000000, 2762),
(2763, 18400, 19, 1000, 15463, 5463, 5463000, 0, '', 0, 0, 0, 2763),
(2764, 500000, 19, 50, 0, 0, 0, 0, '', 0, 0, 0, 2764),
(2766, 2000, 19, 4000, 0, 0, 0, 0, '', 0, 0, 0, 2766),
(2784, 750000, 19, 100, 630253, 330253, 33025300, 0, '', 0, 0, 0, 2784),
(2785, 10000, 19, 1000, 8404, 7904, 7904000, 0, '', 0, 0, 0, 2785),
(2790, 2000, 19, 4000, 1681, 1661, 6644000, 0, '', 0, 0, 0, 2790),
(2795, 50000, 19, 100, 42017, 22017, 2201700, 0, '', 0, 0, 0, 2795),
(2796, 1000000, 19, 2000, 0, 0, 0, 0, '', 0, 2, 550000, 2796),
(2797, 15000, 19, 30, 0, 0, 0, 0, '', 0, 0, 0, 2797);

-- Creación de la tabla inventario
CREATE TABLE inventario (
  id_inventario INT NOT NULL,
  precio_compra INT NOT NULL,
  stock INT NOT NULL,
  unidad VARCHAR(20) NOT NULL,
  fecha_agregado DATE NOT NULL,
  fecha_modificacion DATE NOT NULL,
  inventario_id_proveedor INT(10) NOT NULL,
  inventario_id_local INT NOT NULL,
  inventario_id_descripcion INT(10) NOT NULL,
  PRIMARY KEY (id_inventario),
  FOREIGN KEY (inventario_id_local) REFERENCES locales (id_local) ON DELETE CASCADE ON UPDATE CASCADE,
  UNIQUE (inventario_id_local),
  FOREIGN KEY (inventario_id_proveedor) REFERENCES proveedores (id_proveedor) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (inventario_id_descripcion) REFERENCES descripcion_producto (id_descripcion) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `inventario` (`id_inventario`, `precio_compra`, `stock`, `unidad`, `fecha_agregado`, `fecha_modificacion`, `inventario_id_proveedor`, `inventario_id_local`, `inventario_id_descripcion`) VALUES
(1, 1000, 100, 'gramos', '2023-10-20', '2023-10-20', 1, 3, 1);


-- Creación de la tabla eventos
CREATE TABLE eventos (
  id_evento INT NOT NULL,
  titulo VARCHAR(255) DEFAULT NULL,
  descripcion VARCHAR(255) DEFAULT NULL,
  inicio_evento DATETIME DEFAULT NULL,
  fin_evento DATETIME DEFAULT NULL,
  color VARCHAR(7) DEFAULT NULL,
  recordar_evento DATETIME DEFAULT NULL,
  eventos_id_usuario INT DEFAULT NULL,
  PRIMARY KEY (id_evento),
  FOREIGN KEY (eventos_id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `eventos` (`id_evento`, `titulo`, `descripcion`, `inicio_evento`, `fin_evento`, `color`, `recordar_evento`, `eventos_id_usuario`) VALUES
(49, 'Revisar bodega', 'Revisar bodegaRevisar bodegaRevisar bodegaRevisar bodegaRevisar bodega', '2023-10-20 15:00:00', '2023-10-20 17:00:00', '#7e57c2', '0000-00-00 00:00:00', 1),
(50, 'Ir por productos', 'Ir por productosIr por productosIr por productosIr por productosIr por productos', '2023-10-21 10:00:00', '2023-10-21 12:00:00', '#8f7193', '0000-00-00 00:00:00', 2),
(51, 'cuchi cuchi', 'Andrew', '2023-10-20 15:30:00', '2023-10-20 21:30:00', '#3f6f78', '0000-00-00 00:00:00', 2);


-- Creación de la tabla historial_precios
CREATE TABLE historial_precios (
  id_precio INT NOT NULL,
  cambio_precio DATETIME NOT NULL,
  precio_anterior INT NOT NULL,
  precio_nuevo INT NOT NULL,
  motivo VARCHAR(255) NOT NULL,
  historial_id_usuario INT(10) NOT NULL,
  historial_id_local INT(10) NOT NULL,
  PRIMARY KEY (id_precio),
  FOREIGN KEY (historial_id_local) REFERENCES locales (id_local) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (historial_id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creación de la tabla bancos
CREATE TABLE bancos (
  id_bancos INT NOT NULL,
  nombre_cuenta VARCHAR(50) NOT NULL,
  numero_cuenta INT NOT NULL,
  saldo_inicial INT NOT NULL,
  saldo_actual INT NOT NULL,
  descripcion VARCHAR(255) NOT NULL,
  fecha_creacion DATE NOT NULL,
  fecha_actualizacion DATE NOT NULL,
  bancos_id_local INT NOT NULL,
  eliminado INT NOT NULL,
  eliminado_usuario VARCHAR(100) NOT NULL,
  eliminado_fecha DATETIME NOT NULL,
  PRIMARY KEY (id_bancos),
  FOREIGN KEY (bancos_id_local) REFERENCES locales (id_local) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `bancos` (`id_bancos`, `nombre_cuenta`, `numero_cuenta`, `saldo_inicial`, `saldo_actual`, `descripcion`, `fecha_creacion`, `fecha_actualizacion`, `bancos_id_local`, `eliminado`, `eliminado_usuario`, `eliminado_fecha`) VALUES
(1, 'Bancolombia', 1234567890, 2000000, 2000000, 'Este dinero esta destinado a pedidos', '2023-10-27', '2023-10-27', 3, 0, '', '0000-00-00 00:00:00'),
(2, 'Nequi', 987654321, 5000000, 5000000, 'Este dinero es para deudas', '2023-10-27', '2023-10-27', 4, 0, '', '0000-00-00 00:00:00'),
(3, 'Daviplata', 1230987465, 3000000, 3000000, 'Este dinero es del fisco', '2023-10-27', '2023-10-27', 3, 0, '', '0000-00-00 00:00:00'),
(4, 'Davivienda', 2147483647, 7000000, 7000000, 'Este dinero es para arriendos', '2023-10-27', '2023-10-27', 4, 0, '', '0000-00-00 00:00:00'),
(5, 'Nequi', 987654321, 1000000, 1000000, 'Este es see', '2023-10-27', '2023-10-27', 4, 1, 'andrew', '2023-10-27 18:30:02'),
(6, 'Nequi', 987654321, 345635345, 345635345, '12312312', '2023-10-27', '2023-10-27', 3, 1, 'andrew', '2023-10-27 18:30:06');

-- Creación de la tabla gastos
CREATE TABLE gastos (
  id_gastos INT NOT NULL,
  descripcion VARCHAR(200) NOT NULL,
  gastos_id_proveedor INT NOT NULL,
  nota_proveedor VARCHAR(200) NOT NULL,
  fecha DATE NOT NULL,
  fecha_pago DATE NOT NULL,
  gastos_id_local INT NOT NULL,
  metodo_pago VARCHAR(30) NOT NULL,
  valor BIGINT(15) NOT NULL,
  cantidad INT NOT NULL,
  impuesto INT NOT NULL,
  cuenta_dinero INT NOT NULL,
  categoria_gasto VARCHAR(50) NOT NULL,
  subcategoria_gasto VARCHAR(50) NOT NULL,
  banco INT NOT NULL,
  notas VARCHAR(200) NOT NULL,
  eliminado TINYINT(1) NOT NULL,
  eliminado_usuario VARCHAR(50) NOT NULL,
  eliminado_fecha DATETIME NOT NULL,
  nota VARCHAR(250) NOT NULL,
  PRIMARY KEY (id_gastos),
  FOREIGN KEY (gastos_id_proveedor) REFERENCES proveedores (id_proveedor) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (gastos_id_local) REFERENCES locales (id_local) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `gastos` (`id_gastos`, `descripcion`, `gastos_id_proveedor`, `nota_proveedor`, `fecha`, `fecha_pago`, `gastos_id_local`, `metodo_pago`, `valor`, `cantidad`, `impuesto`, `cuenta_dinero`, `categoria_gasto`, `subcategoria_gasto`, `banco`, `notas`, `eliminado`, `eliminado_usuario`, `eliminado_fecha`, `nota`) VALUES
(1, 'Esto es una descEsto es una descEsto es una desc', 1, 'Esto es una nota', '2023-10-20', '0000-00-00', 3, 'Efectivo', 200000, 5, 19, 2, 'Gastos de personal', 'Arrendamientos', 0, 'Esto es una nota', 0, '', '0000-00-00 00:00:00', ''),
(2, 'desc', 2, 'desc', '2023-10-21', '0000-00-00', 4, 'desc', 2000, 4, 19, 2, 'desc', 'desc', 0, 'desc', 1, 'andrew', '2023-10-21 01:24:39', '');


-- Creación de la tabla auditoria_inventario
CREATE TABLE auditoria_inventario (
  id_auditoria INT NOT NULL,
  fecha DATE NOT NULL,
  estado VARCHAR(50) NOT NULL,
  historial_ventas INT NOT NULL,
  conteo_fisico INT NOT NULL,
  notas VARCHAR(200) NOT NULL,
  persona_encargada VARCHAR(50) NOT NULL,
  anulado TINYINT(1) NOT NULL,
  auditoria_id_inventario INT(10) DEFAULT NULL,
  PRIMARY KEY (id_auditoria),
  FOREIGN KEY (auditoria_id_inventario) REFERENCES inventario (id_inventario) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `auditoria_inventario` (`id_auditoria`, `fecha`, `estado`, `historial_ventas`, `conteo_fisico`, `notas`, `persona_encargada`, `anulado`, `auditoria_id_inventario`) VALUES
(1, '2023-10-20', 'Nuevo', 324, 30, 'Todo ok', 'Angelica', 1, 1),
(28, '2023-10-20', 'Bueno', 150, 100, 'todo ok', 'Angelica', 0, 1);


-- Creación de la tabla detalle_ventas
CREATE TABLE detalle_ventas (
  id_detalle INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario INT NOT NULL,
  total_item INT NOT NULL,
  detalle_id_venta INT NOT NULL,
  detalle_id_producto INT NOT NULL,
  PRIMARY KEY (id_detalle),
  FOREIGN KEY (detalle_id_venta) REFERENCES ventas (id_venta) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (detalle_id_producto) REFERENCES productos (id_productos) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO `detalle_ventas` (`id_detalle`, `cantidad`, `precio_unitario`, `total_item`, `detalle_id_venta`, `detalle_id_producto`) VALUES
(51, 2, 50000, 100000, 33, 3),
(52, 2, 50000, 100000, 34, 3),
(53, 1, 120000, 120000, 34, 4),
(54, 1, 120000, 120000, 35, 4),
(55, 1, 120000, 120000, 36, 4),
(56, 1, 50000, 50000, 36, 3),
(57, 1, 80000, 80000, 36, 2756),
(58, 2, 50000, 100000, 37, 3),
(59, 1, 120000, 120000, 37, 4),
(60, 1, 2000, 2000, 38, 2),
(61, 3, 50000, 150000, 38, 3),
(62, 1, 80000, 80000, 38, 2756),
(63, 2, 30000, 60000, 38, 2754),
(64, 2, 120000, 240000, 39, 4),
(65, 1, 50000, 50000, 39, 3),
(66, 1, 50000, 50000, 40, 3),
(67, 1, 120000, 120000, 40, 4),
(68, 1, 50000, 50000, 41, 3),
(69, 1, 120000, 120000, 41, 4),
(70, 1, 500000, 500000, 42, 2764),
(71, 1, 120000, 120000, 43, 4),
(72, 1, 120000, 120000, 44, 4);

-- Creación de la tabla apertura_caja

CREATE TABLE apertura_caja (
  id_apertura INT(10) NOT NULL,
  fecha_apertura datetime NOT NULL,
  saldo_inicial INT(10) NOT NULL,
  apertura_id_usuario INT(10) NOT NULL,
  apertura_id_local INT(10) NOT NULL,
  PRIMARY KEY (id_apertura),
  FOREIGN KEY (apertura_id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (apertura_id_local) REFERENCES locales (id_local) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creación de la tabla cierre_caja

CREATE TABLE cierre_caja (
  id_cierre INT(10) NOT NULL,
  fecha_cierre datetime NOT NULL,
  saldo_final INT(20) NOT NULL,
  total_ventas INT(10) NOT NULL,
  total_canceladas INT(10) NOT NULL,
  montos_adicionales INT(20) NOT NULL,
  total_efectivo INT(20) NOT NULL,
  diferencia INT(10) NOT NULL,
  notas varchar(250) NOT NULL,
  cierre_id_usuario INT(10) NOT NULL,
  cierre_id_apertura INT(10) NOT NULL,
  PRIMARY KEY (id_cierre),
  FOREIGN KEY (cierre_id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (cierre_id_apertura) REFERENCES apertura_caja (id_apertura) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creación de la tabla montos_adicionales

CREATE TABLE montos_adicionales (
  id_monto INT(10) NOT NULL,
  cantidad INT(50) NOT NULL,
  descripcion varchar(50) NOT NULL,
  fecha_hora datetime NOT NULL,
  montos_id_cierre INT(10) NOT NULL,
  PRIMARY KEY (id_monto),
  FOREIGN KEY (montos_id_cierre) REFERENCES cierre_caja (id_cierre) ON DELETE CASCADE ON UPDATE CASCADE
);
