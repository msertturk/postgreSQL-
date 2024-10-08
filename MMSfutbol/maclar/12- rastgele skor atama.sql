UPDATE Maclar
SET 
    EvSahibiSkor = FLOOR(RANDOM() * 6),  -- 0 ile 5 arasında rastgele skor
    DeplasmanSkor = FLOOR(RANDOM() * 6); -- 0 ile 5 arasında rastgele skor