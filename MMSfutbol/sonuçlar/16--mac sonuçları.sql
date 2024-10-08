SELECT 
    HaftaNo,
    EvSahibi,
    Deplasman,
    EvSahibiSkor,
    DeplasmanSkor,
    HakemAdi,
    StadyumAdi
FROM 
    macsonuclari
WHERE 
    HaftaNo = 1;  -- Burada 1. haftayı listelemek için 1 yazdık, istediğiniz haftayı seçebilirsiniz.