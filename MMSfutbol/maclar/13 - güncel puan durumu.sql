SELECT TakimAdi, SUM(CASE WHEN EvSahibiSkor > DeplasmanSkor THEN 3 WHEN EvSahibiSkor = DeplasmanSkor THEN 1 ELSE 0 END) AS Puan
FROM Takimlar
LEFT JOIN Maclar ON Takimlar.TakimID = Maclar.EvSahibiTakimID
GROUP BY TakimAdi
ORDER BY Puan DESC;