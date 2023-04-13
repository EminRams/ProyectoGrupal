DROP SCHEMA el_bulto;
CREATE SCHEMA el_bulto;
USE el_bulto;

CREATE TABLE `categorias` (
  `id_categoria` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_categoria`)
);
CREATE TABLE `colores` (
  `id_color` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_color`)
);
CREATE TABLE `marcas` (
  `id_marca` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_marca`)
);
CREATE TABLE `prendas` (
  `id_prenda` INT NOT NULL auto_increment, 
  `nombre` VARCHAR(30) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_prenda`)
);
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
CREATE TABLE `roles` (
  `rolescod` varchar(15) NOT NULL,
  `rolesdsc` varchar(45) DEFAULT NULL,
  `rolesest` char(3) DEFAULT NULL,
  PRIMARY KEY (`rolescod`)
);
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
CREATE TABLE `funciones` (
  `fncod` varchar(255) NOT NULL,
  `fndsc` varchar(45) DEFAULT NULL,
  `fnest` char(3) DEFAULT NULL,
  `fntyp` char(3) DEFAULT NULL,
  PRIMARY KEY (`fncod`)
);
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
  `m`.`nombre` AS `marca`, 
  `p`.`nombre` AS `nombre`, 
  `p`.`stock` AS `stock`, 
  `p`.`talla` AS `talla`, 
  `p`.`enlace_imagen` AS `enlace_imagen`, 
  `p`.`estado` AS `estado` 
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
