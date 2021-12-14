INSERT INTO `obchod_s_potravinami`.`obchod`(`nazov_obchodu`, `lokacia`)
VALUES
('COOP Jednota', 'Čadca'),
('Kaufland', 'Žilina');

INSERT INTO `obchod_s_potravinami`.`zakaznici` (`meno`, `priezvisko`, `e_mail`, `tel_cislo`, `id_obchodu`) 
VALUES 
('Jozef', 'Horecký', 'Jozef.Horecky@gmail.com', '0918845693', '1'),
('Pavol', 'Novák', 'NovakPavol@centrum.sk', '0917745682', '1'),
('Karol', 'Strarý', 'Karol123@gmail.com', '0904567891', '1'),
('Peter', 'Rýchly', 'Rychlypeto@gmail.com', '0914563257', '1'),
('Samuel', 'Kulla', 'SamuelKulla@gmail.com', '0901785163', '1'),
('Martin', 'Rovný', 'Martinko1@gmail.com', '0917896321', '1'),
('František', 'Silný', 'Silnyfero@gmail.com', '0916682547', '2'),
('Marek', 'Slabý', 'SlabyMarek@gmail.com', '0907456852', '2'),
('Šimon', 'Krátky', 'Kratky456@gmail.com', '0908746591', '2'),
('Tomáš', 'Dlhý', 'DlhyTomas@gmail.com', '0914354187', '2');

INSERT INTO `obchod_s_potravinami`.`zamestnanci` (`meno`, `priezvisko`, `e_mail`, `tel_cislo`, `id_obchodu`) 
VALUES 
('Ján', 'Pekný', 'PeknyJano@gmail.com', '0917781574', '1'),
('Jakub', 'Rýchly', 'Janko147@gmail.com', '0918456321', '1'),
('Veronika', 'Slabá', 'Veronikaaaa@gmail.com', '0906354961', '1'),
('Lucia', 'Škaredá', 'SkaredaXD@gmail.com', '0914458796', '1'),
('Jaroslav', 'Chorý', 'Jarochory@gmail.com', '0915681478', '1'),
('Miroslav', 'Tvrdý', 'TvrdyMiro@gmail.com', '0918856374', '2'),
('Daniel', 'Kyslý', 'Dano48651654@centrum.sk', '0916623147', '2'),
('Michal', 'Veselý', 'miskooo123@gmail.com', '0906187468', '2'),
('Denis', 'Láskavý', 'DenisssL@gmail.com', '0907481628', '2'),
('Zdeno', 'Chára', 'Zdendo4@gmail.com', '0904524781', '2');

INSERT INTO `obchod_s_potravinami`.`nakupny_kosik` (`zakaznik`, `pocet_potravin`) 
VALUES
('1', '5'),
('1', '3'),
('2', '4'),
('4', '9'),
('7', '15'),
('7', '8'),
('9', '2'),
('10', '5'),
('5', '4'),
('6', '1');

INSERT INTO `obchod_s_potravinami`.`potraviny` (`druh_potraviny`, `krajina_povodu`, `hmotnost_balenia_v_kg`, `povodna_cena`, `sucasna_cena`, `pocet_baleni`, `id_obchodu`)
VALUES
('Jablko', 'Maďarsko', '1', '1.39', '0.66', '50', '1'),
('Pomaranč', 'Portugalsko', '2', '2.99', '2.99', '75', '1'),
('Ľadový_šalát', 'Poľsko', '0.3', '1.19', '0.66', '150', '1'),
('Červená_paprika', 'Španielsko', '1', '3.99', '2.49', '40', '1'),
('Maliny', 'Slovensko', '0.125', '1.99', '1.19', '100', '1'),
('Brokolica', 'Slovensko', '0.5', '1.69', '1.19', '80', '2'),
('Citrón', 'Portugalsko', '0.5', '1.99', '0.99', '35', '2'),
('Biele_šampiňóny', 'Poľsko', '0.5', '0.99', '0.99', '20', '2'),
('Neskoré_zemiaky', 'Poľsko', '2.5', '3.99', '1.99', '10', '2'),
('Bio_mandarínky', 'Španielsko', '0.5', '1.59', '1.19', '25', '2');


INSERT INTO `obchod_s_potravinami`.`potraviny_nakupny_kosik` (`id_potraviny`, `id_kosik`) 
VALUES 
('4', '1'),
('10', '2'),
('8', '3'),
('7', '4'),
('1', '5'),
('3', '6'),
('5', '7'),
('2', '8'),
('9', '9'),
('6', '10');

INSERT INTO `obchod_s_potravinami`.`platba` (`id_kosika`, `datum_platby`, `typ_platby`, `zlava`, `povodna_celkova_cena`, `konecna_celkova_cena`, `zamestnanec_id`) 
VALUES 
('1', '2021-12-06', 'hotovosť', '1', '12.45', '11.21', '4'),
('2', '2021-12-06', 'hotovosť', '1', '3.57', '3.22', '4'),
('3', '2021-11-20', 'karta', '2', '3.96', '3.96', '1'),
('4', '2021-10-08', 'hotovosť', '1', '8.91', '8.02', '2'),
('5', '2021-12-10', 'Stravné_lístky, hotovosť', '2', '9.90', '9.90', '10'),
('6', '2021-12-10', 'Stravné_lístky, hotovosť', '2', '5.28', '5.28', '10'),
('7', '2021-09-19', 'karta', '1', '2.38', '2.15', '6'),
('8', '2021-08-28', 'karta', '2', '14.95', '14.95', '7'),
('9', '2021-12-01', 'hotovosť', '1', '7.96', '7.24', '3'),
('10', '2021-10-14', 'hotovosť', '2', '1.19', '1.19', '8');
