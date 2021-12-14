
CREATE DATABASE Obchod_s_potravinami;
USE Obchod_s_potravinami;

CREATE TABLE Obchod (
  id_obchodu INT AUTO_INCREMENT, PRIMARY KEY (id_obchodu),
  nazov_obchodu varchar(255),
  lokacia varchar(255)
);

CREATE TABLE Zamestnanci (
  zamestnanec_id INT AUTO_INCREMENT, PRIMARY KEY (zamestnanec_id),
  meno varchar(255),
  priezvisko varchar(255),
  e_mail varchar(255),
  tel_cislo INT,
  id_obchodu INT,
  KEY(id_obchodu),
  FOREIGN KEY (id_obchodu) REFERENCES Obchod (id_obchodu)
);

CREATE TABLE Zakaznici (
  id_zakaznika INT AUTO_INCREMENT, PRIMARY KEY (id_zakaznika),
  meno varchar(255),
  priezvisko varchar(255),
  e_mail varchar(255),
  tel_cislo INT,
  id_obchodu INT,
  KEY(id_obchodu),
  FOREIGN KEY (id_obchodu) REFERENCES Obchod (id_obchodu)
);

CREATE TABLE Potraviny (
  id_potraviny INT AUTO_INCREMENT, PRIMARY KEY (id_potraviny),
  druh_potraviny varchar(255),
  krajina_povodu varchar(255),
  Hmotnost_balenia_v_kg FLOAT,
  povodna_cena FLOAT,
  sucasna_cena FLOAT,
  pocet_baleni INT,
  id_obchodu INT,
  KEY(id_obchodu),
  FOREIGN KEY (id_obchodu) REFERENCES Obchod (id_obchodu)
);

CREATE TABLE Nakupny_kosik (            
  id_kosika INT AUTO_INCREMENT, PRIMARY KEY (id_kosika),
  zakaznik INT,
  pocet_potravin INT,
  KEY(zakaznik),
  FOREIGN KEY (zakaznik) REFERENCES Zakaznici (id_zakaznika)
);

CREATE TABLE Platba (
	id_platby INT AUTO_INCREMENT, PRIMARY KEY(id_platby),
  id_kosika INT,
  datum_platby DATE,
  typ_platby varchar(255),
  zlava INT,
  povodna_celkova_cena FLOAT,
  konecna_celkova_cena FLOAT,
  zamestnanec_id INT,
  KEY(id_kosika),
  KEY(zamestnanec_id),
  FOREIGN KEY (id_kosika) REFERENCES Nakupny_kosik (id_kosika),
  FOREIGN KEY (zamestnanec_id) REFERENCES Zamestnanci (zamestnanec_id)
);

CREATE TABLE Potraviny_Nakupny_kosik (
  id_potraviny INT,
  id_kosik INT,
  KEY(id_potraviny),
  KEY(id_kosik),
  FOREIGN KEY (id_potraviny) REFERENCES Potraviny (id_potraviny),
  FOREIGN KEY (id_kosik) REFERENCES Nakupny_kosik (id_kosika)
);
