INSERT INTO ksiazka_wydawnictwo (id, label)
VALUES (1, 'Greg');

INSERT INTO ksiazka_wydawnictwo (id, label)
VALUES (2, 'Sonia Draga');

INSERT INTO ksiazka_wydawnictwo (id, label)
VALUES (3, 'Media Rodzina');

INSERT INTO ksiazka_kategoria (id, genre)
VALUES (1, 'Powiesc psychologiczna');

INSERT INTO ksiazka_kategoria (id, genre)
VALUES (2, 'Thriller');

INSERT INTO ksiazka_kategoria (id, genre)
VALUES (3, 'Fantastyka');

INSERT INTO autor (id, nazwisko, imie)
VALUES (1, 'Dostojewski', 'Fiodor');

INSERT INTO autor (id, nazwisko, imie)
VALUES (2, 'Brown', 'Dan');

INSERT INTO autor (id, nazwisko, imie)
VALUES (3, 'Rowling', 'J.K.');

INSERT INTO ksiazka (id, title, year, ksiazka_kategoria_id, ksiazka_wydawnictwo_id)
VALUES (1, 'Zbrodnia i kara', 1866, 1, 1 );

INSERT INTO ksiazka (id, title, year, ksiazka_kategoria_id, ksiazka_wydawnictwo_id)
VALUES (2, 'Kod Leonarda da Vinci', 2003, 2, 2 );

INSERT INTO ksiazka (id, title, year, ksiazka_kategoria_id, ksiazka_wydawnictwo_id)
VALUES (3, 'Harry Potter i kamien filozoficzny', 1998, 3, 3 );

INSERT INTO ksiazka_autor (autor_id, ksiazka_id)
VALUES (1,1);

INSERT INTO ksiazka_autor (autor_id, ksiazka_id)
VALUES (2,2);

INSERT INTO ksiazka_autor (autor_id, ksiazka_id)
VALUES (3,3);