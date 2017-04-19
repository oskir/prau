CREATE TABLE `usuarios` (
	`id_usuario` INT(15) NOT NULL,
	`codigo_usuario` varchar(15) NOT NULL,
	`nombre` varchar(256) NOT NULL,
	`correo` varchar(256) NOT NULL,
	`telefono` varchar(15) NOT NULL,
	`dni` varchar(10) NOT NULL,
	`comentarios` TEXT NOT NULL,
	`administrador` BOOLEAN NOT NULL,
	PRIMARY KEY (`id_usuario`)
);

CREATE TABLE `prestamos` (
	`id_prestamo` INT(15) NOT NULL,
	`id_alumno` INT(15) NOT NULL,
	`time` TIME NOT NULL,
	`comentarios` TEXT NOT NULL,
	PRIMARY KEY (`id_prestamo`)
);

CREATE TABLE `materiales` (
	`id_material` INT(15) NOT NULL,
	`codigo_material` varchar(15) NOT NULL,
	`nombre` varchar(150) NOT NULL,
	`modelo` varchar(150) NOT NULL,
	`id_marca` varchar(20) NOT NULL,
	`id_subcategoria` INT(15) NOT NULL,
	`no_serie` varchar(100) NOT NULL,
	`descripcion` TEXT NOT NULL,
	PRIMARY KEY (`id_material`)
);

CREATE TABLE `marcas` (
	`id_marca` INT(15) NOT NULL,
	`nombre` varchar(100) NOT NULL,
	PRIMARY KEY (`id_marca`)
);

CREATE TABLE `categorias` (
	`id_categorias` INT(15) NOT NULL,
	`nombre` varchar(100) NOT NULL,
	PRIMARY KEY (`id_categorias`)
);

CREATE TABLE `subcategorias` (
	`id_subcategoria` INT NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`id_categoria` INT(15) NOT NULL,
	`foto` TEXT NOT NULL,
	PRIMARY KEY (`id_subcategoria`)
);

CREATE TABLE `accesorios` (
	`id_accesorio` INT(15) NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`cantidad` INT(4) NOT NULL,
	`foto` TEXT NOT NULL,
	PRIMARY KEY (`id_accesorio`)
);

CREATE TABLE `ciclos` (
	`id_ciclo` INT(15) NOT NULL,
	`nombre` varchar(100) NOT NULL,
	`curso` varchar(20) NOT NULL,
	PRIMARY KEY (`id_ciclo`)
);

CREATE TABLE `rel_usuarios_ciclos` (
	`id_rel` INT NOT NULL,
	`id_usuario` INT(15) NOT NULL,
	`id_ciclo` INT(15) NOT NULL,
	PRIMARY KEY (`id_rel`)
);

CREATE TABLE `rel_subcategorias_accesorios` (
	`id_rel` INT(15) NOT NULL,
	`id_subcategoria` INT(15) NOT NULL,
	`id_accesorio` INT(15) NOT NULL,
	`necesario` BOOLEAN NOT NULL,
	`cantidad` INT NOT NULL,
	PRIMARY KEY (`id_rel`)
);

CREATE TABLE `rel_prestamos_materiales` (
	`id_rel` INT(15) NOT NULL,
	`id_prestamo` INT(15) NOT NULL,
	`id_material` INT(15) NOT NULL,
	`incidencias` TEXT NOT NULL,
	PRIMARY KEY (`id_rel`)
);

