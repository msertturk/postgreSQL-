CREATE TABLE Maclar (
    MacID SERIAL PRIMARY KEY,
    EvSahibiTakimID INT,
    DeplasmanTakimID INT,
    HakemID INT,
    StadyumID INT,
    HaftaID INT,
    EvSahibiSkor INT,
    DeplasmanSkor INT,
    FOREIGN KEY (EvSahibiTakimID) REFERENCES Takimlar(TakimID),
    FOREIGN KEY (DeplasmanTakimID) REFERENCES Takimlar(TakimID),
    FOREIGN KEY (HakemID) REFERENCES Hakemler(HakemID),
    FOREIGN KEY (StadyumID) REFERENCES Stadyumlar(StadyumID),
    FOREIGN KEY (HaftaID) REFERENCES Haftalar(HaftaID)
);