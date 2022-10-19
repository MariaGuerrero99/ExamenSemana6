CREATE DATABASE Cinelitas;
use Cinelitas;

CREATE TABLE `salas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` int NOT NULL,
  `numero` int NOT NULL,
  `pelicula` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `salas` VALUES (1,'50','1','A Whisker Away');
INSERT INTO `salas` VALUES (2,'20','2','Evangelion 3.0+1.0');
INSERT INTO `salas` VALUES (3,'45','3','Your Name');
INSERT INTO `salas` VALUES (4,'58','4','Me Before You');
INSERT INTO `salas` VALUES (5,'100','5','Avengers End Game');
INSERT INTO `salas` VALUES (6,'30','6','Shutter Island');
INSERT INTO `salas` VALUES (7,'15','7','Violet Evergarden');
INSERT INTO `salas` VALUES (8,'90','8','El Camino');
INSERT INTO `salas` VALUES (9,'35','9','Bird Box');

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `costo` int NOT NULL,
  `fecha` DATE NOT NULL,
  `salas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`salas_id`),
  KEY `fk_peliculas_salas_idx` (`salas_id`),
  CONSTRAINT `fk_peliculas_salas_idx` FOREIGN KEY (`salas_id`) REFERENCES `salas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

INSERT INTO `peliculas` VALUES (1,'Avengers End Game','7000','2022-09-19',5);
INSERT INTO `peliculas` VALUES (2,'El Camino','6500','2022-06-07',8);
INSERT INTO `peliculas` VALUES (3,'Shutter Island','4000','2022-02-05',6);
INSERT INTO `peliculas` VALUES (4,'Bird Box','4000','2022-05-27',9);
INSERT INTO `peliculas` VALUES (5,'A Whisker Away','2000','2022-09-19',1);
INSERT INTO `peliculas` VALUES (6,'Your Name','3500','2022-09-11',3);
INSERT INTO `peliculas` VALUES (7,'Me Before You','4000','2022-02-07',4);
INSERT INTO `peliculas` VALUES (8,'Violet Evergarden','2500','2022-12-24',7);
INSERT INTO `peliculas` VALUES (9,'Evangelion 3.0+1.0','2000','2022-12-20',2);
