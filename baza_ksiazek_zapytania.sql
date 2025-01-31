SELECT ksiazka.title
FROM ksiazka
JOIN ksiazka_autor ON ksiazka.id = ksiazka_autor.ksiazka_id
JOIN autor ON ksiazka_autor.autor_id = autor.autor_id
WHERE LOWER(autor.nazwisko) = 'kowalski';

SELECT ksiazka.title
FROM ksiazka
JOIN ksiazka_wydawnictwo ON ksiazka.ksiazka_wydawnictwo_id = ksiazka_wydawnictwo.id
WHERE UPPER(ksiazka_wydawnictwo.label) = 'ABC';