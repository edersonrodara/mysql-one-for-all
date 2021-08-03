DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50),
valor_plano DECIMAL(5, 2),
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50),
idade INT,
plano_id INT,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS cantores (
cantor_id INT PRIMARY KEY AUTO_INCREMENT,
cantor VARCHAR(50)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS albuns (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50),
cantor_id INT,
FOREIGN KEY (cantor_id) REFERENCES cantores(cantor_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS musicas (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(50),
album_id INT,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS seguir_artistas (
usuario_id INT,
cantor_id INT,
PRIMARY KEY(cantor_id, usuario_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (cantor_id) REFERENCES cantores(cantor_id)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS historico_musica (
usuario_id INT,
musica_id INT,
PRIMARY KEY(usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
) engine = InnoDB;

INSERT INTO planos (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);
  
INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20 , 3),
  ('Roger', 45, 1);
  
INSERT INTO cantores (cantor)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO albuns (album, cantor_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO musicas (musica, album_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);
  
INSERT INTO seguir_artistas (usuario_id, cantor_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  
INSERT INTO historico_musica (usuario_id, musica_id)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);
  