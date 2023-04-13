CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `el_bulto`.`productos_v` AS
    SELECT 
        `p`.`id_producto` AS `id_producto`,
        `m`.`nombre` AS `marca`,
        `p`.`nombre` AS `nombre`,
        `p`.`stock` AS `stock`,
        `p`.`talla` AS `talla`,
        `p`.`enlace_imagen` AS `enlace_imagen`,
        `p`.`estado` AS `estado`
    FROM
        ((((`el_bulto`.`productos` `p`
        JOIN `el_bulto`.`marcas` `m` ON (`p`.`id_marca` = `m`.`id_marca`))
        JOIN `el_bulto`.`categorias` `c` ON (`p`.`id_categoria` = `c`.`id_categoria`))
        JOIN `el_bulto`.`prendas` `pr` ON (`p`.`id_prenda` = `pr`.`id_prenda`))
        JOIN `el_bulto`.`colores` `co` ON (`p`.`id_color` = `co`.`id_color`))