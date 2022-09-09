-- Descripción
-- La academia está trabajando en mejorar su plataforma de estudio y planea crear un espacio
-- que sirva como una red social entre estudiantes y docentes, por lo que necesita almacenar
-- en una base de datos los post y comentarios que se generen.
-- Parte 1: Creación, inserciones, modificaciones y eliminaciones en la tabla “Posts”
-- Parte 2: Creación e inserciones en la tabla “comentarios”


-- Parte 1

-- 1. Crear una base de datos con nombre “Posts”.

CREATE DATABASE posts

-- 2. Crear una tabla “post”, con los atributos id, nombre de usuario, fecha de creación, contenido y descripción.

CREATE TABLE post (id INT, nombre_de_usuario VARCHAR(25), fecha_de_creacion VARCHAR(12), contenido VARCHAR(255), descripcion VARCHAR(255), PRIMARY KEY(id) );

-- 3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos".

    Pamela
    a) INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (1, 'Pamela', '06-09-2022', 'primer post', 'este es el primer post de Pamela');
    b) INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (2, 'Pamela', '06-09-2022', 'segundo post', 'este es el segundo post de Pamela');

    Carlos
    a) INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES (4, 'Carlos', '06-09-2022', 'primer post', 'este es el primer post de Carlos');

-- 4. Modificar la tabla post, agregando la columna título.

    ALTER TABLE post ADD titulo VARCHAR(25);

-- 5. Agregar título a las publicaciones ya ingresadas.

    Pamela
    a) UPDATE post SET titulo = 'primer titulo de Pamela' WHERE id = 1;
    b) UPDATE post SET titulo = 'segundo titulo de Pamela' WHERE id = 2;

    Carlos
    a) UPDATE post SET titulo = 'primer titulo de Carlos' WHERE id = 4;

-- 6. Insertar 2 post para el usuario "Pedro".

    Pedro
    a) INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES (3, 'Pedro', '06-09-2022', 'primer post', 'este es el primer post de Pedro', 'primer titulo de Pedro');
    b) INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES (5, 'Pedro', '06-09-2022', 'segundo post', 'este es el segundo post de Pedro', 'segundo titulo de Pedro');

-- 7. Eliminar el post de Carlos.

    DELETE FROM post WHERE nombre_de_usuario = 'Carlos';

-- 8. Ingresar un nuevo post para el usuario "Carlos".

    Carlos
    a) INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES (6, 'Carlos', '06-09-2022', 'nuevo post', 'este es el post nuevo de Carlos', 'nuevo titulo de Carlos');

-- Parte 2
-- 1. Crear una nueva tabla llamada “comentarios”, con los atributos id, fecha, hora de creación y contenido, que se relacione con la tabla posts.

    CREATE TABLE comentarios (id INT, fecha VARCHAR(12), hora_de_creacion VARCHAR(12), contenido VARCHAR(255), nombre_de_usuario VARCHAR(25), PRIMARY KEY(id), FOREIGN KEY(id) REFERENCES post(id) );

-- 2. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos".

        Pamela
    a) INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (1, '06-09-2022', '22:59', 'primer comentario de Pamela', 'Pamela');
    b) INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (2, '06-09-2022', '22:59', 'segundo comentario de Pamela', 'Pamela');

        Carlos
    a) INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (3, '06-09-2022', '23:11', 'primer comentario de Carlos', 'Carlos');
    b) INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (4, '06-09-2022', '23:11', 'segundo comentario de Carlos', 'Carlos');
    c) INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (6, '06-09-2022', '23:11', 'tercer comentario de Carlos', 'Carlos');
    d) INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (7, '06-09-2022', '23:11', 'cuarto comentario de Carlos', 'Carlos');

-- 3. Crear un nuevo post para "Margarita".

    INSERT INTO post (id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES (8, 'Margarita', '06-09-2022', 'primer post', 'este es el primer post de Pamela', ' titulo de Margarita');

-- 4. Ingresar 5 comentarios para el post de Margarita.

    INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (8, '06-09-2022', '23:25', 'primer comentario de Margarita', 'Margarita');
    INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (9, '06-09-2022', '23:25', 'segundo comentario de Margarita', 'Margarita');
    INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (10, '06-09-2022', '23:25', 'tercer comentario de Margarita', 'Margarita');
    INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (11, '06-09-2022', '23:25', 'cuarto comentario de Margarita', 'Margarita');
    INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido, nombre_de_usuario) VALUES (12, '06-09-2022', '23:25', 'quinto comentario de Margarita', 'Margarita');



