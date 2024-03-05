drop schema if exists plushie;
drop user if exists usuario_plushie;
CREATE SCHEMA plushie;
create user 'usuario_plushie'identified by 'Contraseña';
grant all privileges on plushie.* to 'usuario_plushie'@'%';
flush privileges;
USE plushie;