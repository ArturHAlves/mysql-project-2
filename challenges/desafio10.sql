CREATE TABLE SpotifyClone.musicas_favoritas (
    user_id INT NOT NULL,
    musica_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id , musica_id),
    FOREIGN KEY (user_id)
        REFERENCES usuario (user_id),
    FOREIGN KEY (musica_id)
        REFERENCES musica (musica_id)
);

INSERT INTO SpotifyClone.musicas_favoritas(user_id, musica_id) VALUES 
(1, 3),
(1, 6),
(1, 10),
(2, 4),
(3, 1),
(3, 3),
(4, 7),
(4, 4),
(5, 10),
(5, 2),
(8, 4),
(9, 7),
(10, 3);
