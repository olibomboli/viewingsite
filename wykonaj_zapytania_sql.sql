-- 1. Wybierz numery departamentów, nazwiska pracowników oraz numery pracownicze ich
-- szefów z tabeli EMP.
SELECT DEPTNO, ENAME, MGR
FROM EMP;
-- 2. Wybierz wszystkie kolumny z tabeli EMP.
SELECT *
FROM EMP;
-- 3. Wylicz roczną pensję podstawową dla każdego pracownika.
SELECT *, SAL*12 AS roczna_pensja
FROM EMP;
-- 4. Wylicz roczną pensję podstawową dla każdego pracownika gdyby każdemu dać podwyżkę o 250.
SELECT *, (SAL+250)*12 AS roczna_pensja_po_podwyzce
FROM EMP;
-- 5. Wyświetl wszystkie numery departamentów występujące w tabeli EMP.
SELECT DEPTNO
FROM EMP;
-- 6. Wyświetl wszystkie różne numery departamentów występujące w tabeli EMP.
SELECT DISTINCT DEPTNO
FROM EMP;
-- 7. Posortuj wszystkie dane tabeli EMP według ENAME.
SELECT *
FROM EMP
ORDER BY ENAME;
-- 8. Posortuj malejąco wszystkie dane tabeli EMP według daty ich zatrudnienia począwszy od
-- ostatnio zatrudnionych.
SELECT *
FROM EMP
ORDER BY HIREDATE DESC;
-- 9. Wybierz nazwiska, numery, stanowiska pracy i numery departamentów wszystkich
-- pracowników zatrudnionych na stanowisku CLERK.
SELECT ENAME, EMPNO, JOB, DEPTNO
FROM EMP
WHERE JOB = 'CLERK';
-- 10. Wybierz wszystkie nazwy i numery departamentów większe od nr 20.
SELECT DEPTNO, DNAME
FROM DEPT
WHERE DEPTNO > 20;
-- 11. Wybierz pracowników, których prowizja przekracza miesięczną pensję.
SELECT ENAME, EMPNO, SAL, COMM
FROM EMP
WHERE COMM > SAL;
-- 12. Wybierz dane tych pracowników, których zarobki mieszczą się pomiędzy 1000 a 2000.
SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 2000;
-- 13. Wybierz dane tych pracowników, których nazwiska zaczynają się na S.
SELECT *
FROM EMP
WHERE ENAME LIKE 'S%';
-- 14. Wybierz dane tych pracowników zatrudnionych na stanowisku CLERK których zarobki SAL
-- mieszczą się w przedziale <1000.2000>.
SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND SAL BETWEEN 1000 AND 2000;
-- 15. Wybierz wszystkich pracowników zatrudnionych na stanowisku MANAGER z pensją
-- powyżej 1500 oraz wszystkich pracowników na stanowisku SALESMAN, niezależnie od
-- pensji.
SELECT *
FROM EMP
WHERE (JOB = 'MANAGER' AND SAL>1500) OR JOB = 'SALESMAN';
--16. Wybierz wszystkich pracowników zatrudnionych na stanowisku MANAGER ze wszystkich
-- departamentów wraz ze wszystkimi pracownikami zatrudnionymi na stanowisku CLERK w
-- departamencie 10.
SELECT *
FROM EMP
WHERE JOB = 'MANAGER'
UNION
SELECT *
FROM EMP
WHERE JOB = 'CLERK' AND DEPTNO = 10;
-- 17. Wybierz numery i nazwy departamentów sortując według numerów departamentów.
SELECT DEPTNO, DNAME
FROM DEPT
ORDER BY DEPTNO;
-- 18. Dopisz do bazy danych nowego pracownika.
INSERT INTO EMP (EMPNO, ENAME, JOB, SAL, COMM, DEPTNO)
VALUES (9999, 'NOWY PRACOWNIK', 'CLERK', 1200, NULL, 20);
-- 19. Zmień dowolnie pensję wybranemu pracownikowi.
UPDATE EMP
SET SAL = 2500
WHERE EMPNO = 9999; -- NUMER PRACOWNIKA KTOREMU ZMIENIAMY PENSJE
-- 20. Usuń jednego z pracowników.
DELETE FROM EMP
WHERE EMPNO = 9999; --NR PRACOWNIKA