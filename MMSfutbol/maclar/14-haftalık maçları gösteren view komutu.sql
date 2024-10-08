CREATE VIEW HaftalikMaclar AS
SELECT 
    hf.HaftaNo,
    t1.TakimAdi AS EvSahibi,
    t2.TakimAdi AS Deplasman,
    m.EvSahibiSkor,
    m.DeplasmanSkor,
    h.HakemAdi,
    s.StadyumAdi
FROM 
    Maclar m
JOIN 
    Takimlar t1 ON m.EvSahibiTakimID = t1.TakimID
JOIN 
    Takimlar t2 ON m.DeplasmanTakimID = t2.TakimID
JOIN 
    Hakemler h ON m.HakemID = h.HakemID
JOIN 
    Stadyumlar s ON m.StadyumID = s.StadyumID
JOIN 
    Haftalar hf ON m.HaftaID = hf.HaftaID
ORDER BY 
    hf.HaftaNo, m.MacID;