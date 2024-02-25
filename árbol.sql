drop schema if exists práctica;
drop user if exists usuario_practica;
CREATE SCHEMA práctica;
create user 'usuario_practica'identified by 'la_Clave';
grant all privileges on práctica.* to 'usuario_practica'@'%';
flush privileges;
USE práctica;
CREATE TABLE arbol(
id_arbol INT NOT NULL AUTO_INCREMENT,
ruta_imagen VARCHAR(1024),
nombre  VARCHAR(50),
tipo_flor VARCHAR(50),
dureza VARCHAR(25),
PRIMARY KEY(id_arbol)
) ENGINE = InnoDB