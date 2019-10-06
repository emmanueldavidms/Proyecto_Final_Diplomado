SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE DATABASE IF NOT EXISTS `bd_curso` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `bd_curso`;



DROP TABLE IF EXISTS `tbl_materias`;
CREATE TABLE IF NOT EXISTS `tbl_materias` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id de la materia',
  `cod_materia` varchar(8) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Codigo de la materia',
  `nombre_materia` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la materia',
  `horas_academicas` int(3) NOT NULL COMMENT 'Cantidad de horas academicas',
    PRIMARY KEY (`id_materia`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de articulos';



INSERT INTO `tbl_materias` (`id_materia`, `cod_materia`, `nombre_materia`, `horas_academicas`) VALUES
(1, 'TDPR01', 'Programacion 1', 80),
(2, 'TDBD01', 'Base de Datos', 60),
(3, 'TDRD01', 'Redes', 80),
(4, 'TDPR02', 'Programacion 2', 120);



DROP TABLE IF EXISTS `tbl_docentes`;
CREATE TABLE IF NOT EXISTS `tbl_docentes` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id del docente',
  `ced_docente` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula o Rif del cliente',
  `nombre_docente` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del docente',
  `apellido_docente` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Apellido del docente',
  `telf_docente` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono movil del cliente',
  `email_docente` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email del cliente',
  `profesion_docente` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Profesion del Docente',

  PRIMARY KEY (`id_docente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de Docentes';



INSERT INTO `tbl_docentes` (`id_docente`, `ced_docente`, `nombre_docente`, `apellido_docente`, `telf_docente`, `email_docente`, `profesion_docente`) VALUES
(1, '12345678', 'NombreDocente1', 'ApellidoDocente1', '0123-4567890', 'Docente1@correo.yzx', 'ING Sistema'),
(2, '12345789', 'NombreDocente2', 'ApellidoDocente2', '0123-2432199', 'cliente2@correo.xyz', 'T.S.U Informatica');



DROP TABLE IF EXISTS `tbl_alumnos`;
CREATE TABLE IF NOT EXISTS `tbl_alumnos` (
`id_alumno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id del alumno',
`ced_alumno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Cedula del alumno',
`nombre_alumno` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del alumno',
`apellido_alumno` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Apellido del alumno',
`telf_alumno` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Telefono movil del alumno',
`email_alumno` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email del alumno',


  PRIMARY KEY (`id_alumno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de detalles de facturas';




INSERT INTO `tbl_alumnos` (`id_alumno`, `ced_alumno`, `nombre_alumno`, `apellido_alumno`, `telf_alumno`,`email_alumno`) VALUES
(1, '18293151', 'Emmanuel', 'Medina', '0412-5010803', 'correoalumno1@correo.xyz'),
(2, '17675633', 'Vanessa', 'Mambell', '0416-6113303', 'correoalumno2@correo.xyz'),
(3, '12345678', 'NombreAlumno3', 'ApellidoAlumno3', '0412-0987654', 'correoalumno3@correo.xyz'),
(4, '87654321', 'NombreAlumno4', 'ApellidoAlumno4', '0416-1234567', 'correoalumno4@correo.xyz');




DROP TABLE IF EXISTS `tbl_inscripcion`;
CREATE TABLE IF NOT EXISTS `tbl_inscripcion` (
  `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id de la inscripcion',
  `fecha_inicio` date NOT NULL COMMENT 'Fecha de inicio del curso',
  `fecha_culminacion` date NOT NULL COMMENT 'Fecha de culminacion del curso',
  `id_alumno` int(11) NOT NULL COMMENT 'Id del alumno',
  `id_materia` int(11) NOT NULL COMMENT 'Id de la materia',
  `id_docente` int(11) NOT NULL COMMENT 'Id del docente',

  PRIMARY KEY (`id_inscripcion`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_materia` (`id_materia`),
  KEY `id_docente` (`id_docente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Tabla de inscripcion';


