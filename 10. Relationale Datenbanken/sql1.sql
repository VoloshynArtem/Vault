use agentur;

show tables;


select * 
  from information_schema.columns 
 where table_schema = 'agentur'; 

select * from mitarbeiter;
select * from pkw;


use agentur;
select 
    concat(mitarbeiter.Name, Vorname) as name,
    abteilung.name as "Abteilungsname",
    Typ as "zustehendes auto",
    GebDat as Geburtsdatum,
    Gehalt,
    fahrbuch.MNr,
    fahrbuch.Datum

FROM mitarbeiter

join pkw on mitarbeiter.VNr = pkw.PKWNr
join abteilung on mitarbeiter.AbtNr = abteilung.AbtNr
join fahrbuch on mitarbeiter.VNr = fahrbuch.PKWNr


ORDER BY Datum

;
