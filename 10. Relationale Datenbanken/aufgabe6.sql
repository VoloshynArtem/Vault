
DROP DATABASE IF EXISTS buchverleih;
CREATE DATABASE buchverleih;

Drop table if EXISTS buch;
create TABLE buch(
    autorname varchar(20),
    ErscheinungsDatum date,
    isbn  varchar(17) not null primary key,
    titel varchar(20) not null,
    seitenzahl int unsigned not null,
    ausleiherID int unsigned,
    CONSTRAINT ausleiherID FOREIGN KEY (ausleiherID) REFERENCES ausleiher(id)
);

show columns from buch; 
-- generate sample data for buch
insert into buch (autorname, ErscheinungsDatum, isbn, titel, seitenzahl, ausleiherID) values
('Max Mustermann', '2023-01-01', '978-3-16-148410-0', 'Das Buch', 300, 1),
('Erika Mustermann', '2022-05-15', '978-1-234-56789-7', 'Ein anderes Buch', 250, 2),
('Hans Müller', '2021-10-10', '978-0-123456-47-2', 'Noch ein Buch', 400, NULL),
('Anna Schmidt', '2020-03-20', '978-3-16-148410-X', 'Das letzte Buch', 150, 3);


Drop table if Exists ausleiher;



CREATE TABLE ausleiher (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    vorname VARCHAR(20) NOT NULL,

);

alter table ausleiher
add column email varchar(50) not null;



-- Clear table and reset AUTO_INCREMENT to 0
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE ausleiher;
SET FOREIGN_KEY_CHECKS = 1;
ALTER TABLE ausleiher AUTO_INCREMENT = 1;

--generate sample data for ausleiher
INSERT INTO ausleiher (name, vorname, email) VALUES
  ('Müller', 'Peter', 'peter.mueller@example.com'),
  ('Schmidt', 'Julia', 'julia.schmidt@example.com'),
  ('Weber', 'Thomas', 'thomas.weber@example.com'),
  ('Fischer', 'Laura', 'laura.fischer@example.com');
  






select * from ausleiher;

show columns from ausleiher;
-- eine n zu 1 beziehung weil eine person kann mehrere bücher ausleihen aber ein buch kann nur einmal ausgeliehen werden


select * from buch;
select * from ausleiher;

select 
    concat(name, " ", vorname) as "Name",
    concat (titel, " - " , autorname, " - ", ErscheinungsDatum) as "Track id",
    isbn,
    email
 from buch
Join ausleiher on ausleiherID = ausleiher.id;



