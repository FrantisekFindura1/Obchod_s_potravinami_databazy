/* 1-1 Vyberie všetky dáta o platbách v ktoré mali pôvodnú cenu väčšiu ako 10€ */
SELECT * FROM platba WHERE povodna_celkova_cena >= 10;

/* 1-2 Vyberie všetky dáta o potravinách ktoré sú zo Slovenska */
SELECT * FROM potraviny WHERE krajina_povodu LIKE 'Slovensko';

/* 1-3 Vyberie všetky dáta o zákazníkoch, ktorý budú zoradený podľa mena */
SELECT * FROM zakaznici ORDER BY meno;

/* 1-4 Vyberie dáta druhu potravín a pocet balení na sklade tých potravín, ktoré majú menej než 50 balení */
SELECT druh_potraviny, pocet_baleni FROM potraviny WHERE pocet_baleni <= 50 ORDER BY pocet_baleni;



/* 2-1 Vyberie všetky dáta o zamestnancoch kde ich meno začína písmenom J a ich priezvisko končí na y alebo ak sa ich tel. č. rovná zadanému */
SELECT * FROM zamestnanci WHERE meno LIKE 'J%' AND priezvisko LIKE '%y' OR tel_cislo = '904524781';

/* 2-2 Vyberie všetky dáta o potravinách, ktoré nie sú z obchodu s id 2*/
SELECT * FROM potraviny WHERE id_obchodu != '2';

/* 2-3 Vyberie všetky dáta o platbách v hotovosti */
SELECT * FROM platba WHERE typ_platby LIKE 'hotovosť';



/* 3-1 Vypíše dáta o počte jednotlivých typov platieb */
SELECT typ_platby, COUNT(*) AS pocet_platieb FROM platba GROUP BY typ_platby;

/* 3-2 Vypíše koľko druhov potravín pochádzajú z jednotlivých krajín */
SELECT krajina_povodu, COUNT(*) AS krajiny FROM potraviny GROUP BY krajina_povodu;

/* 3-3 Vypíše koľkokrát sa jednotlivý typ platby nachádza v tabuľke, ale vypíše iba tie, ktorých je viac ako 2 */
SELECT typ_platby, COUNT(*) AS pocet_platieb FROM platba GROUP BY typ_platby HAVING pocet_platieb > 2;


