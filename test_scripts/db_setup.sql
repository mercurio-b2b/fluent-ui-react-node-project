CREATE SCHEMA `ordermgmt`;

create table `ordermgmt`.`auftrag` (

  id integer primary key auto_increment,

  studio_id integer,  

  mitarbeiter varchar(50),

  auftrags_nummer varchar(20),

  auftrags_datum date,

  kunden_nummer varchar(20),

  kunde_anrede varchar(10),

  kunde_vorname varchar(50),

  kunde_nachname varchar(50),

  kunde_firma varchar(50),

  kunde_strasse varchar(50),

  kunde_strasse_zusatz varchar(50),

  kunde_plz varchar(10),

  kunde_ort varchar(50), 

  kunde_land varchar(20),

  kunde_mwst numeric(4,1),

  preis_netto numeric(10,2),

  einkauf_geplant_netto numeric(10,2),

  einkauf_ist_netto numeric(10,2),

  anzahlung smallint,

  anzahlung_betrag numeric(10,2),

  anzahlung_erhalten date,

  liefertermin_geplant date,

  liefertermin_ist date

);

 

create table `ordermgmt`.`auftrag_lieferant` (

  id integer primary key auto_increment,

  auftrag_id integer,  

  lieferant_nr varchar(20),

  lieferant_name varchar(50),

  lieferant_land varchar(20),

  positionen_geplant_netto numeric(10,2),

  manuell smallint

);

 

create table `ordermgmt`.`lieferant_rechnung` (

  id integer primary key auto_increment,

  auftrag_lieferant_id integer,

  rechnung_nummer varchar(20),

  rechnung_datum date,

  rechnung_betrag_netto numeric(10,2),

  rechnung_mwst numeric(4,1),

  relevant_wre smallint,

  angelegt_am datetime,

  angelegt_von varchar(20),

  freigegeben_am datetime,

  freigegeben_von varchar(20),

  gebucht datetime,

  bezahlt datetime

);
