CREATE TABLE `usuarios` (
  `id_usuario` bigint(10) NOT NULL AUTO_INCREMENT, 
  `correo_electronico` VARCHAR(50) DEFAULT NULL, 
  `username` VARCHAR(30) DEFAULT NULL, 
  `contrasenia` VARCHAR(30) DEFAULT NULL, 
  `nombre` VARCHAR(40) DEFAULT NULL, 
  `apellido` VARCHAR(40) DEFAULT NULL, 
  `telefono` VARCHAR(20) DEFAULT NULL, 
  `direccion` VARCHAR(250) DEFAULT NULL, 
  `enlace_imagen` VARCHAR(59) DEFAULT NULL, 
  `estado` ENUM('ACT', 'INA') DEFAULT 'ACT', 
  PRIMARY KEY (`id_usuario`)
);