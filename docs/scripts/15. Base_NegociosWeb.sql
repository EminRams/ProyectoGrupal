DROP SCHEMA el_bulto;
CREATE SCHEMA el_bulto;
USE el_bulto;

CREATE TABLE `categorias` (
  `id_categoria` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_categoria`)
);
INSERT INTO `categorias` VALUES (1,'Adultos','ACT'),(2,'Ninios','ACT'),(3,'Bebes','ACT');
CREATE TABLE `colores` (
  `id_color` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_color`)
);
INSERT INTO `colores` VALUES (1,'Azul','ACT'),(2,'Verde','ACT'),(3,'Rosa','ACT'),(4,'Naranja','ACT'),(5,'Marron','ACT'),(6,'Purpura','ACT'),(7,'Beige','ACT'),(8,'Rojo','ACT'),(9,'Celest','ACT'),(10,'Negro','ACT'),(11,'Blano','ACT'),(12,'Gris','ACT'),(13,'Amarillo','ACT');
CREATE TABLE `marcas` (
  `id_marca` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_marca`)
);
INSERT INTO `marcas` VALUES (1,'Nike','ACT'),(2,'Rebok','ACT'),(3,'Under Armour','ACT');
CREATE TABLE `prendas` (
  `id_prenda` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_prenda`)
);
INSERT INTO `prendas` VALUES (1,'Polo','ACT'),(2,'Cuello-V','ACT'),(3,'Cuello-C','ACT'),(4,'Vestido','ACT'),(5,'Zapatos','ACT'),(6,'Shorts','ACT'),(7,'Pantalones','ACT'),(8,'Guantes','ACT');
CREATE TABLE `productos` (
  `id_producto` INT NOT NULL auto_increment, 
  `id_marca` INT DEFAULT NULL, 
  `id_categoria` INT DEFAULT NULL, 
  `id_prenda` INT DEFAULT NULL, 
  `id_color` INT DEFAULT NULL, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `descripcion` VARCHAR(255) DEFAULT NULL, 
  `precio` DECIMAL(3, 0) DEFAULT NULL, 
  `stock` INT DEFAULT NULL, 
  `talla` ENUM('S', 'M', 'L', 'XL', 'XXL', 'XXXL') DEFAULT NULL, 
  `enlace_imagen` VARCHAR(50) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_producto`), 
  KEY `id_categoria` (`id_categoria`), 
  KEY `id_prenda` (`id_prenda`), 
  KEY `id_color` (`id_color`), 
  KEY `id_marca` (`id_marca`), 
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`), 
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_prenda`) REFERENCES `prendas` (`id_prenda`), 
  CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`id_color`) REFERENCES `colores` (`id_color`), 
  CONSTRAINT `productos_ibfk_4` FOREIGN KEY (`id_marca`) REFERENCES `marcas` (`id_marca`)
);
INSERT INTO `productos` VALUES (1,1,1,1,1,'Cambridge','Cambridge',50,100,'M',NULL,'ACT');
CREATE TABLE `roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL,
  PRIMARY KEY (`rolescod`)
);
INSERT INTO `roles` VALUES ('ADMIN','ADMIN','ACT'),('AUD','AUD','ACT'),('EMP','EMP','ACT');
CREATE TABLE `usuario` (
  `usercod` bigint(10) NOT NULL AUTO_INCREMENT,
  `useremail` varchar(80) DEFAULT NULL,
  `username` varchar(80) DEFAULT NULL,
  `userpswd` varchar(128) DEFAULT NULL,
  `userfching` datetime DEFAULT NULL,
  `userpswdest` char(3) DEFAULT NULL,
  `userpswdexp` datetime DEFAULT NULL,
  `userest` char(3) DEFAULT NULL,
  `useractcod` varchar(128) DEFAULT NULL,
  `userenlace_imagen` varchar(59) DEFAULT NULL,
  `userpswdchg` varchar(128) DEFAULT NULL,
  `usertipo` char(3) DEFAULT NULL COMMENT 'Tipo de Usuario, Normal, Consultor o Cliente',
  PRIMARY KEY (`usercod`),
  UNIQUE KEY `useremail_UNIQUE` (`useremail`),
  KEY `usertipo` (`usertipo`,`useremail`,`usercod`,`userest`)
);
INSERT INTO `usuario` VALUES (1,'emerson@mail.com','Emerson Fernando Zapata Rivas','$2y$10$RqUdgMBqR2rFuetPkdnJq.7PGW3qOMx6atOorOjJvVjLyPVyCrQdK','2023-04-17 01:11:57','ACT','2023-07-16 00:00:00','ACT','6452fd416170a5159f2222fea0649de110fdee8f5ccd6447dc2dbaa63fc4432a',NULL,'2023-04-17 01:11:57','PBL'),(2,'emp@mail.com','Empy Callejas Romero','$2y$10$x04tSn2/PvEjDn7gakdwgOLERu0MtG9h5uHIIdxvjEhZJLxYpqbH2','2023-04-17 13:49:42','ACT','2023-07-16 00:00:00','ACT','5717c7c345bd755b9b45b6bf0e25c5c812c3ba56207b25267624eb786eccb3db',NULL,'2023-04-17 13:49:42','PBL'),(3,'aud@mail.com','Alejandro Gonzales Macarrones','$2y$10$/XnMJ9cSVRLK64dE/eScP.QTU1Ng.JmKFoJYu/YhJcmJXANQ5Ig9a','2023-04-17 14:51:39','ACT','2023-07-16 00:00:00','ACT','5c98b04864ec734b0038d91473e66f2a2c2dcb6ac17a97d07310b3a01cf25680',NULL,'2023-04-17 14:51:39','PBL');
CREATE TABLE `roles_usuarios` (
  `usercod` bigint(10) NOT NULL,
  `rolescod` varchar(15) NOT NULL,
  `roleuserest` char(3) DEFAULT NULL,
  `roleuserfch` datetime DEFAULT NULL,
  `roleuserexp` datetime DEFAULT NULL,
  PRIMARY KEY (`usercod`,`rolescod`),
  KEY `rol_usuario_key_idx` (`rolescod`),
  CONSTRAINT `rol_usuario_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_rol_key` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO `roles_usuarios` VALUES (1,'ADMIN','ACT','2023-03-23 00:00:00','2030-12-31 00:00:00'),(2,'EMP','ACT','2023-03-23 00:00:00','2030-12-31 00:00:00'),(3,'AUD','ACT','2023-03-23 00:00:00','2030-12-31 00:00:00');
CREATE TABLE `funciones` (
  `fncod` varchar(255) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL,
  PRIMARY KEY (`fncod`)
);
INSERT INTO `funciones` VALUES ('Admin_Categoria_delete','Admin_Categoria_delete','ACT','CTR'),('Admin_Categoria_edit','Admin_Categoria_edit','ACT','CTR'),('Admin_Categoria_new','Admin_Categoria_new','ACT','CTR'),('Admin_Categoria_view','Admin_Categoria_view','ACT','CTR'),('Admin_Color_delete','Admin_Color_delete','ACT','CTR'),('Admin_Color_edit','Admin_Color_edit','ACT','CTR'),('Admin_Color_new','Admin_Color_new','ACT','CTR'),('Admin_Color_view','Admin_Color_view','ACT','CTR'),('Admin_Marca_delete','Admin_Marca_delete','ACT','CTR'),('Admin_Marca_edit','Admin_Marca_edit','ACT','CTR'),('Admin_Marca_new','Admin_Marca_new','ACT','CTR'),('Admin_Marca_view','Admin_Marca_view','ACT','CTR'),('Admin_Prenda_delete','Admin_Prenda_delete','ACT','CTR'),('Admin_Prenda_edit','Admin_Prenda_edit','ACT','CTR'),('Admin_Prenda_new','Admin_Prenda_new','ACT','CTR'),('Admin_Prenda_view','Admin_Prenda_view','ACT','CTR'),('Admin_Producto_delete','Admin_Producto_delete','ACT','CTR'),('Admin_Producto_edit','Admin_Producto_edit','ACT','CTR'),('Admin_Producto_new','Admin_Producto_new','ACT','CTR'),('Admin_Producto_view','Admin_Producto_view','ACT','CTR'),('Controllers\\Administrador\\Categoria','Controllers\\Administrador\\Categoria','ACT','CTR'),('Controllers\\Administrador\\Categorias','Controllers\\Administrador\\Categorias','ACT','CTR'),('Controllers\\Administrador\\Color','Controllers\\Administrador\\Color','ACT','CTR'),('Controllers\\Administrador\\Colores','Controllers\\Administrador\\Colores','ACT','CTR'),('Controllers\\Administrador\\Index','Controllers\\Administrador\\Index','ACT','CTR'),('Controllers\\Administrador\\Marca','Controllers\\Administrador\\Marca','ACT','CTR'),('Controllers\\Administrador\\Marcas','Controllers\\Administrador\\Marcas','ACT','CTR'),('Controllers\\Administrador\\Prenda','Controllers\\Administrador\\Prenda','ACT','CTR'),('Controllers\\Administrador\\Prendas','Controllers\\Administrador\\Prendas','ACT','CTR'),('Controllers\\Administrador\\Producto','Controllers\\Administrador\\Producto','ACT','CTR'),('Controllers\\Administrador\\Productos','Controllers\\Administrador\\Productos','ACT','CTR'),('Menu_AdmCategorias','Menu_AdmCategorias','ACT','CTR'),('Menu_AdmColores','Menu_AdmColores','ACT','CTR'),('Menu_AdmMarcas','Menu_AdmMarcas','ACT','CTR'),('Menu_AdmPrendas','Menu_AdmPrendas','ACT','CTR'),('Menu_AdmProductos','Menu_AdmProductos','ACT','CTR'),('Menu_MntQuotes','Menu_MntQuotes','ACT','CTR'),('Menu_MntUsuarios','Menu_MntUsuarios','ACT','CTR'),('Menu_PaymentCheckout','Menu_PaymentCheckout','ACT','CTR');
CREATE TABLE `funciones_roles` (
  `rolescod` varchar(15) NOT NULL,
  `fncod` varchar(255) NOT NULL,
  `fnrolest` char(3) DEFAULT NULL,
  `fnexp` datetime DEFAULT NULL,
  PRIMARY KEY (`rolescod`,`fncod`),
  KEY `rol_funcion_key_idx` (`fncod`),
  CONSTRAINT `funcion_rol_key` FOREIGN KEY (`rolescod`) REFERENCES `roles` (`rolescod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rol_funcion_key` FOREIGN KEY (`fncod`) REFERENCES `funciones` (`fncod`) ON DELETE NO ACTION ON UPDATE NO ACTION
);
INSERT INTO `funciones_roles` VALUES ('ADMIN','Admin_Categoria_delete','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Categoria_edit','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Categoria_new','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Categoria_view','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Color_delete','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Color_edit','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Color_new','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Color_view','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Marca_delete','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Marca_edit','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Marca_new','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Marca_view','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Prenda_delete','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Prenda_edit','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Prenda_new','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Prenda_view','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Producto_delete','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Producto_edit','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Producto_new','ACT','2030-12-31 00:00:00'),('ADMIN','Admin_Producto_view','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Categoria','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Categorias','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Color','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Colores','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Index','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Marca','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Marcas','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Prenda','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Prendas','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Producto','ACT','2030-12-31 00:00:00'),('ADMIN','Controllers\\Administrador\\Productos','ACT','2030-12-31 00:00:00'),('ADMIN','Menu_AdmCategorias','ACT','2030-12-31 00:00:00'),('ADMIN','Menu_AdmColores','ACT','2030-12-31 00:00:00'),('ADMIN','Menu_AdmMarcas','ACT','2030-12-31 00:00:00'),('ADMIN','Menu_AdmPrendas','ACT','2030-12-31 00:00:00'),('ADMIN','Menu_AdmProductos','ACT','2030-12-31 00:00:00'),('AUD','Admin_Categoria_View','ACT','2030-04-28 00:00:00'),('AUD','Admin_Color_View','ACT','2030-04-28 00:00:00'),('AUD','Admin_Marca_View','ACT','2030-04-28 00:00:00'),('AUD','Admin_Prenda_View','ACT','2030-04-28 00:00:00'),('AUD','Admin_Producto_View','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Categoria','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Categorias','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Color','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Colores','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Index','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Marca','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Marcas','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Prenda','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Prendas','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Producto','ACT','2030-04-28 00:00:00'),('AUD','Controllers\\Administrador\\Productos','ACT','2030-04-28 00:00:00'),('AUD','Menu_AdmCategorias','ACT','2030-04-28 00:00:00'),('AUD','Menu_AdmColores','ACT','2030-04-28 00:00:00'),('AUD','Menu_AdmMarcas','ACT','2030-04-28 00:00:00'),('AUD','Menu_AdmPrendas','ACT','2030-04-28 00:00:00'),('AUD','Menu_AdmProductos','ACT','2030-04-28 00:00:00'),('EMP','Admin_Categoria_new','ACT','2030-04-28 00:00:00'),('EMP','Admin_Categoria_view','ACT','2030-12-31 00:00:00'),('EMP','Admin_Color_new','ACT','2030-12-31 00:00:00'),('EMP','Admin_Color_view','ACT','2030-12-31 00:00:00'),('EMP','Admin_Marca_new','ACT','2030-12-31 00:00:00'),('EMP','Admin_Marca_view','ACT','2030-12-31 00:00:00'),('EMP','Admin_Prenda_new','ACT','2030-12-31 00:00:00'),('EMP','Admin_Prenda_view','ACT','2030-12-31 00:00:00'),('EMP','Admin_Producto_new','ACT','2030-12-31 00:00:00'),('EMP','Admin_Producto_view','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Categoria','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Categorias','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Color','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Colores','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Index','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Marca','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Marcas','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Prenda','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Prendas','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Producto','ACT','2030-12-31 00:00:00'),('EMP','Controllers\\Administrador\\Productos','ACT','2030-12-31 00:00:00'),('EMP','Menu_AdmCategorias','ACT','2030-12-31 00:00:00'),('EMP','Menu_AdmColores','ACT','2030-12-31 00:00:00'),('EMP','Menu_AdmMarcas','ACT','2030-12-31 00:00:00'),('EMP','Menu_AdmPrendas','ACT','2030-12-31 00:00:00'),('EMP','Menu_AdmProductos','ACT','2030-12-31 00:00:00');
CREATE TABLE `bitacora` (
  `bitacoracod` int(11) NOT NULL AUTO_INCREMENT,
  `bitacorafch` datetime DEFAULT NULL,
  `bitprograma` varchar(255) DEFAULT NULL,
  `bitdescripcion` varchar(255) DEFAULT NULL,
  `bitobservacion` mediumtext,
  `bitTipo` char(3) DEFAULT NULL,
  `bitusuario` bigint(18) DEFAULT NULL,
  PRIMARY KEY (`bitacoracod`)
);
CREATE TABLE `encabezado_ventas` (
  `id_venta` INT NOT NULL auto_increment, 
  `usercod` bigint(10) NOT NULL, 
  `fecha` DATETIME DEFAULT NULL, 
  PRIMARY KEY (`id_venta`), 
  KEY `usercod` (`usercod`), 
  CONSTRAINT `encabezado_ventas_ibfk_1` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`)
);
CREATE TABLE `detalle_ventas` (
  `id_venta` INT NOT NULL, 
  `id_producto` INT NOT NULL, 
  `cantidad` INT DEFAULT NULL, 
  `precio` DECIMAL(10, 0) DEFAULT NULL, 
  PRIMARY KEY (`id_venta`, `id_producto`), 
  KEY `id_producto` (`id_producto`), 
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`), 
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `encabezado_ventas` (`id_venta`)
);
CREATE algorithm = undefined definer = `root` @`localhost` SQL security definer view `el_bulto`.`productos_v` AS 
SELECT 
  `p`.`id_producto` AS `id_producto`, 
  `p`.`nombre` AS `nombre`, 
  `p`.`precio` as `precio`,
  `p`.`descripcion` as `descripcion`,
  `p`.`stock` AS `stock`, 
  `p`.`talla` AS `talla`, 
  `p`.`enlace_imagen` AS `enlace_imagen`, 
  `p`.`estado` AS `estado`,
  `c`.`nombre` AS `categoria`,
  `m`.`nombre` AS `marca`,
  `co`.`nombre` AS `color`
FROM 
  (
    (
      (
        (
          `el_bulto`.`productos` `p` 
          JOIN `el_bulto`.`marcas` `m` ON (`p`.`id_marca` = `m`.`id_marca`)
        ) 
        JOIN `el_bulto`.`categorias` `c` ON (
          `p`.`id_categoria` = `c`.`id_categoria`
        )
      ) 
      JOIN `el_bulto`.`prendas` `pr` ON (
        `p`.`id_prenda` = `pr`.`id_prenda`
      )
    ) 
    JOIN `el_bulto`.`colores` `co` ON (`p`.`id_color` = `co`.`id_color`)
  )
