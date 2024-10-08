DO $$
DECLARE
    takimlar RECORD;
    ev_sahibi INT;
    deplasman INT;
    hakem INT;
    hafta INT;
BEGIN
    FOR hafta IN 1..34 LOOP  -- 18 takım için 34 hafta (her takım 2 kez oynar)
        FOR takimlar IN (SELECT TakimID FROM Takimlar ORDER BY RANDOM()) LOOP
            IF ev_sahibi IS NULL THEN
                ev_sahibi := takimlar.TakimID;
            ELSE
                deplasman := takimlar.TakimID;
                hakem := (SELECT HakemID FROM Hakemler ORDER BY RANDOM() LIMIT 1);
                INSERT INTO Maclar (EvSahibiTakimID, DeplasmanTakimID, HakemID, StadyumID, HaftaID, EvSahibiSkor, DeplasmanSkor)
                VALUES (ev_sahibi, deplasman, hakem, (SELECT StadyumID FROM Takimlar WHERE TakimID = ev_sahibi), hafta, 0, 0);
                ev_sahibi := NULL;
            END IF;
        END LOOP;
    END LOOP;
END $$;