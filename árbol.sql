drop schema if exists practica;
drop user if exists usuario_practica;
CREATE SCHEMA practica;
create user 'usuario_practica'identified by 'la_Clave';
grant all privileges on practica.* to 'usuario_practica'@'%';
flush privileges;
USE practica;
CREATE TABLE arbol(
id_arbol INT NOT NULL AUTO_INCREMENT,
ruta_imagen VARCHAR(1024),
nombre  VARCHAR(50),
tipo_flor VARCHAR(50),
dureza VARCHAR(25),
PRIMARY KEY(id_arbol)
) ENGINE = InnoDB;

INSERT INTO practica.arbol (`id_arbol`, `ruta_imagen`, `nombre`, `tipo_flor`, `dureza`) VALUES 
('1', 'https://tienda.grupomundoverde.mx/wp-content/uploads/2020/04/Manzano.jpg', 'Manzano', 'Hermafroditas', 'Media');
INSERT INTO practica.arbol (`id_arbol`, `ruta_imagen`, `nombre`, `tipo_flor`, `dureza`) VALUES 
('2', 'https://m.media-amazon.com/images/I/71trld1SaFS._AC_SL1100_.jpg', 'Cerezo', 'Hermafroditas', 'Media');
INSERT INTO practica.arbol (`id_arbol`, `ruta_imagen`, `nombre`, `tipo_flor`, `dureza`) VALUES 
('3', 'https://i.ebayimg.com/images/g/YcsAAOSwGjZkLzqS/s-l1600.jpg', 'Pino', 'Diclinas', 'Variable');
INSERT INTO practica.arbol (`id_arbol`, `ruta_imagen`, `nombre`, `tipo_flor`, `dureza`) VALUES 
('4', 'https://i.ebayimg.com/images/g/VhYAAOSworRk8SCr/s-l1600.jpg', 'Cedro', 'Unisexual', 'Alta');
