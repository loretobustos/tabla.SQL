-- creando base de datos posts
CREATE DATABASE posts;
-- accediendo a la base de datos
\c posts;
-- creando tabla post
CREATE TABLE post(id INT, nombre_usuario VARCHAR(25), fecha_creacion DATE, contenido VARCHAR(25), descripcion VARCHAR(25), PRIMARY KEY(id));
-- insertando datos
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('1', 'Pamela', '2022-09-06', 'contenido1', 'descripcion1');
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('2', 'Pamela', '2022-09-06', 'contenido2', 'descripcion2');
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES ('3', 'Carlos', '2022-09-06', 'contenido3', 'descripcion3');
-- modificando tabla post
ALTER TABLE post ADD titulo VARCHAR(25);
-- actualizando datos de la tabla post
UPDATE post SET titulo='titulo1' WHERE contenido='contenido1';
UPDATE post SET titulo='titulo2' WHERE contenido='contenido2';
UPDATE post SET titulo='titulo3' WHERE contenido='contenido3';
-- insertando nuevos datos 'pedro'
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('4', 'Pedro', '2022-09-06', 'contenido4', 'descripcion4', 'titulo4');
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('5', 'Pedro', '2022-09-06', 'contenido5', 'descripcion5', 'titulo5');
-- eliminando datos 'carlos'
DELETE FROM post WHERE nombre_usuario='Carlos';
-- insertando nuevo datos 'carlos'
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('6', 'Carlos', '2022-09-06', 'contenido6', 'descripcion6', 'titulo6');
-- creando tabla comentarios se agrego un nuevo atributo post_id
CREATE TABLE comentarios(id INT, fecha DATE, hora_creacion TIME, contenido VARCHAR(25), post_id INT, FOREIGN KEY(post_id) REFERENCES post(id), PRIMARY KEY(id));
-- insertando datos a la tabla comentarios 2 para pamela, 4 para carlos
-- pamela 2 comentarios
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('1', '2022-09-06', '19:05:01', 'contenido7', 1);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('2', '2022-09-06', '19:05:05', 'contenido8', 1);
-- carlos 4 comentarios
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('3', '2022-09-06', '19:10:10', 'contenido9', 6);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('4', '2022-09-06', '19:10:20', 'contenido10', 6);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('5', '2022-09-06', '19:10:30', 'contenido11', 6);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('6', '2022-09-06', '19:10:40', 'contenido12', 6);
-- insertando nuevos datos a la tabla post 'margarita'
INSERT INTO post(id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES ('555', 'Margarita', '2022-09-06', 'contenido13', 'descripcion13', 'titulo13');
--insertando nuevos comentarios 5 para 'margarita'
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('7', '2022-09-06', '19:20:40', 'contenido13', 555);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('8', '2022-09-06', '19:30:40', 'contenido14', 555);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('9', '2022-09-06', '19:40:40', 'contenido15', 555);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('10', '2022-09-06', '19:50:40', 'contenido16', 555);
INSERT INTO comentarios(id, fecha, hora_creacion, contenido, post_id) VALUES ('11', '2022-09-06', '19:60:40', 'contenido17', 555);
