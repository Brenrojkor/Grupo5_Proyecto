-- Crear la base de datos para la tienda
DROP DATABASE IF EXISTS plushieShop;
DROP USER IF EXISTS grupo5;
CREATE DATABASE IF NOT EXISTS plushieShop;
CREATE USER 'grupo5'@'%' IDENTIFIED BY 'clave_bd';
GRANT ALL PRIVILEGES ON plushieShop.* to 'grupo5'@'%';
FLUSH PRIVILEGES;
USE plushieShop;

/* la tabla de categoria contiene categorias de peluches*/
CREATE TABLE plushieShop.categoria (
  id_categoria INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(30) NOT NULL,
  activo bool,
  PRIMARY KEY (id_categoria))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

create table plushieShop.producto (
  id_producto INT NOT NULL AUTO_INCREMENT,
  id_categoria INT NOT NULL,
  nombre VARCHAR(30) NOT NULL,  
  descripcion VARCHAR(1600) NOT NULL, 
  precio double,
  existencias int,  
  ruta_imagen varchar(1024),
  activo bool,
  PRIMARY KEY (id_producto),
  foreign key fk_producto_caregoria (id_categoria) references categoria(id_categoria)  
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO categoria (id_categoria, nombre, activo) VALUES
    ('1', 'Naruto', true),
    ('2', 'Dragon Ball', true),
    ('3', 'One Piece', true),
    ('4', 'Mario Bros', true),
    ('5', 'Fnaf', true),
    ('6', 'Plantas vs Zombies', true),
    ('7', 'Polar', true),
    ('8', 'Panda', true),
    ('9', 'Escandalosos', true),
    ('10', 'Otros', true),
    ('11', 'My Melody', true),
    ('12', 'Cinnamoroll', true),
    ('13', 'Kuromi', true),
    ('14', 'Pompompuri', true),
    ('15', 'Hello Kitty', true);
    
    INSERT INTO producto (id_producto, id_categoria, nombre, descripcion, precio, existencias, ruta_imagen, activo) VALUES
    ('1', '1', 'Peluche Naruto 25cm', 'Muñeco de peluche de Naruto para niños, juguete coleccionable de anime,  regalo de cumpleaños y navidad, 25cm','18.240','5','https://www.king-jouet.com/fstrz/r/s/images.king-jouet.com/6/gu909093_6.jpg?frz-v=3234', true),
    ('2', '1', 'Peluche Sasuke 25cm', 'Muñeco de peluche de Sasuke para niños, juguete coleccionable de anime,  regalo de cumpleaños y navidad, 25cm','18.240','10','https://media.entertainmentearth.com/assets/images/b5b9233b5fbb43e4be9dc40966ef3f80lg.jpg', true),
    ('3', '1', 'Peluche Kakashi 25cm', 'Muñeco de peluche de Kakashi para niños, juguete coleccionable de anime,  regalo de cumpleaños y navidad, 25cm','18.240','3','https://www.cadeau-naruto.com/wp-content/uploads/2023/11/peluche-kakashi-hatake.jpg', true),
    ('4', '1', 'Peluche Sakura', 'Muñeco de peluche de Sakura para niños, regalo de cumpleaños y navidad','15.300','15','https://i.ebayimg.com/images/g/1egAAOSwJLBiSsBC/s-l1600.jpg', true),
	('5', '1', 'Peluche Hinata 25cm', 'Muñeco de peluche de Hinata para niños, juguete coleccionable de anime,  regalo de cumpleaños y navidad','18.240','7','https://baseec-img-mng.akamaized.net/images/item/origin/b834a5566407f66b1f3dac5aaa258092.jpg?imformat=generic', true);

