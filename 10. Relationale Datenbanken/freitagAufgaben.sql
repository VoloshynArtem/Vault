create DATABASE Fluggesellschaft;
use Fluggesellschaft;

create table Pilot(
    personalNR int UNSIGNED Not null AUTO_INCREMENT primary Key,
    name Varchar(20) not null,
    age date not null
);


create table Flugzeugtyp(
    typID int UNSIGNED not null primary Key AUTO_INCREMENT,
    typBezeichnung varchar(20) not null,
    reisegeschwindigkeit int unsigned


);


create table Flugstunden(
    personalNR int UNSIGNED not null,
    typID int UNSIGNED not null, 
    flugstunden int unsigned not null,
    FOREIGN KEY(personalNR) references Pilot(personalNR),
    FOREIGN KEY(typID) references Flugzeugtyp(typID)
);


show tables;
use hardware;
-- generate sample data

-- Insert sample data into Pilot table
insert into Pilot (name, age) values 
('John Doe', '1980-05-15'),
('Jane Smith', '1990-08-22'),
('Michael Brown', '1975-12-10');

-- Insert sample data into Flugzeugtyp table
insert into Flugzeugtyp (typBezeichnung, reisegeschwindigkeit) values 
('Boeing 737', 850),
('Airbus A320', 830),
('Cessna 172', 226);

-- Insert sample data into Flugstunden table
insert into Flugstunden (personalNR, typID, flugstunden) values 
(1, 1, 1200),
(1, 2, 800),
(2, 2, 500),
(2, 3, 300),
(3, 1, 1500),
(3, 3, 700);



-- alle flugstunden eines Piloten für ein Modell
SELECT 
    Name,
    typBezeichnung,
    SUM(flugstunden) AS totalFlugstunden,
    age
FROM Flugstunden
JOIN Pilot ON Flugstunden.personalNR = Pilot.personalNR
JOIN Flugzeugtyp ON Flugstunden.typID = Flugzeugtyp.typID
WHERE Flugstunden.personalNR = 1
GROUP BY typBezeichnung;


--alle flugstunden der einzelnen Piloten


select 
    Name,
    Sum(Flugstunden) as "flugstunden total",
    age

FROM Flugstunden
JOIN Pilot ON Flugstunden.personalNR = Pilot.personalNR
JOIN Flugzeugtyp ON Flugstunden.typID = Flugzeugtyp.typID
    
GROUP BY Flugstunden.personalNR
limit 10;


