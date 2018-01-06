INSERT INTO store (name, comingFromPL) VALUES ('Biedronka', 0);
INSERT INTO store (name, comingFromPL) VALUES ('ABC', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Delikatesy Centrum', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Lewiatan', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Groszek', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Euro Sklep', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Lidl', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Tesco', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Carrefour', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Kaufland', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Auchan', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Nasz Sklep', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Delikatesy Sezam', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Makro Cash&Carry', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Zabka', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Polomarket', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Selgros Cash&Carry', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Netto', 0);
INSERT INTO store (name, comingFromPL) VALUES ('E.Leclerc', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Piotr i Pawel', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Stokrotka', 1);
INSERT INTO store (name, comingFromPL) VALUES ('Mila', 1);
INSERT INTO store (name, comingFromPL) VALUES ('SPAR', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Media Markt', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Saturn', 0);
INSERT INTO store (name, comingFromPL) VALUES ('Media Expert', 1);

INSERT INTO category(name) VALUES ('Elektronika');
INSERT INTO category(name) VALUES ('Moda');
INSERT INTO category(name) VALUES ('Dom i ogród');
INSERT INTO category(name) VALUES ('Dziecko');
INSERT INTO category(name) VALUES ('Kultura i rozrywka');
INSERT INTO category(name) VALUES ('Motoryzacja');
INSERT INTO category(name) VALUES ('Sport i wypoczynek');
INSERT INTO category(name) VALUES ('Uroda i zdrowie');
INSERT INTO category(name) VALUES ('Zywnosc');

INSERT INTO subcategory (name, category_id) VALUES ('Komputery', 1);
INSERT INTO subcategory (name, category_id) VALUES ('RTV', 1);
INSERT INTO subcategory (name, category_id) VALUES ('AGD', 1);
INSERT INTO subcategory (name, category_id) VALUES ('Telefony i akcesoria', 1);
INSERT INTO subcategory (name, category_id) VALUES ('Inne', 1);

INSERT INTO subcategory (name, category_id) VALUES ('Odziez', 2);
INSERT INTO subcategory (name, category_id) VALUES ('Obuwie', 2);
INSERT INTO subcategory (name, category_id) VALUES ('Dodatki', 2);

INSERT INTO subcategory (name, category_id) VALUES ('Wyposazenie', 3);
INSERT INTO subcategory (name, category_id) VALUES ('Przybory kuchenne', 3);
INSERT INTO subcategory (name, category_id) VALUES ('Meble', 3);
INSERT INTO subcategory (name, category_id) VALUES ('Ogrod', 3);

INSERT INTO subcategory (name, category_id) VALUES ('Akcesoria', 4);
INSERT INTO subcategory (name, category_id) VALUES ('Artykuly szkolne', 4);
INSERT INTO subcategory (name, category_id) VALUES ('Odziez i obuwie dzieciece', 4);

INSERT INTO subcategory (name, category_id) VALUES ('Gry planszowe', 5);
INSERT INTO subcategory (name, category_id) VALUES ('Gry komputerowe', 5);
INSERT INTO subcategory (name, category_id) VALUES ('Instrumenty', 5);

INSERT INTO subcategory (name, category_id) VALUES ('Czesci samochodowe', 6);
INSERT INTO subcategory (name, category_id) VALUES ('Opony', 6);
INSERT INTO subcategory (name, category_id) VALUES ('Inne', 6);

INSERT INTO subcategory (name, category_id) VALUES ('Turystyka', 7);
INSERT INTO subcategory (name, category_id) VALUES ('Akcesoria sportowe', 7);
INSERT INTO subcategory (name, category_id) VALUES ('Silownia i fitness', 7);
INSERT INTO subcategory (name, category_id) VALUES ('Inne', 7);

INSERT INTO subcategory (name, category_id) VALUES ('Makijaz', 8);
INSERT INTO subcategory (name, category_id) VALUES ('Kosmetyki pielegnacyjne', 8);
INSERT INTO subcategory (name, category_id) VALUES ('Leki', 8);
INSERT INTO subcategory (name, category_id) VALUES ('Suplementy diety', 8);
INSERT INTO subcategory (name, category_id) VALUES ('Inne', 8);

INSERT INTO subcategory (name, category_id) VALUES ('Napoje', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Przetwory', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Słodycze i przekaski', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Nabiał', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Produkty zbozowe', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Przyprawy i dodatki', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Wyroby miesne', 9);
INSERT INTO subcategory (name, category_id) VALUES ('Inne', 9);
