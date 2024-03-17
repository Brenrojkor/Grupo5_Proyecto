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
	('5', '1', 'Peluche Hinata 25cm', 'Muñeco de peluche de Hinata para niños, juguete coleccionable de anime,  regalo de cumpleaños y navidad','18.240','7','https://baseec-img-mng.akamaized.net/images/item/origin/b834a5566407f66b1f3dac5aaa258092.jpg?imformat=generic', true),
    ('6', '2', 'Peluche Goku 25cm', 'Muñeco de peluche de Goku para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','18.240','9','https://i.pinimg.com/736x/27/ea/b2/27eab2aa35434a3234acad1356e5d4ef--dragon-ball-z-plushies.jpg', true),
    ('7', '2', 'Peluche Vegeta 25cm', 'Muñeco de peluche de Vegeta para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','15.000','10','https://m.media-amazon.com/images/I/715ommdiKJL._AC_SY606_.jpg',true),
    ('8', '2', 'Peluche Piccolo 25cm', 'Muñeco de peluche de Vegeta para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','20.000','5','https://i5.walmartimages.com/asr/894534e7-9d88-4ecf-a627-0a393d0e3550.4bab59009d7d7bfcc9e4c832d53e56f3.jpeg', true),
    ('9', '2', 'Peluche Freezer 15cm', 'Muñeco de peluche de Freezer para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','17.500','6','https://tiendadfanatic.com/wp-content/uploads/2021/04/Peluche-Freezer-Dragon-Ball-Z-15cm.jpg',true),
    ('10','2', 'Peluche Bulma 30cm', 'Muñeco de peluche de Bulma para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','22.000','11','https://todomasbarato.es/6458-thickbox_default/peluche-de-bulma-de-dragon-ball-z-30-cm-nuevo-con-etiquetas-chica-madre-goku.jpg', true),
    ('11','3', 'Peluche Luffy 20cm', 'Muñeco de peluche de Luffy para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','18.240','20','https://www.figurine-discount.com/46208-thickbox_default/one-piece-peluche-luffy-20-cm.jpg', true),
    ('12','3', 'Peluche Chopper 25cm', 'Muñeco de peluche de Chopper para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','15.000','11','https://www.figurine-discount.com/22042-thickbox_default/one-piece-peluche-chopper-25-cm.jpg', true),
    ('13','3', 'Peluche Zoro 25cm', 'Muñeco de peluche de Zoro para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','20.000','24','https://okocollection.fr/1038-large_default/one-piece-peluche-sanji.jpg', true),
    ('14','3', 'Peluche Sanji 30cm', 'Muñeco de peluche de Sanji para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','17.500','5','https://www.cdiscount.com/pdt2/5/8/8/1/550x550/fp3701315823588/rw/peluche-one-piece-sanji-30-cm.jpg', true),
    ('15','3', 'Peluche Nami 25cm', 'Muñeco de peluche de Nami para niños, juguete coleccionable del anime, regalo de cumpleaños y navidad','22.000','22','https://i5.walmartimages.com/seo/Plush-One-Piece-Nami-Soft-Doll-Toys-New-ge52554_e46b501f-1206-4f58-a4b2-a515cb4cc8a6.f8f8237130251aeaff1d19858f142ef7.jpeg?odnHeight=640&odnWidth=640&odnBg=FFFFFF', true);
    
    