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