CREATE TABLE Takimlar (
    TakimID SERIAL PRIMARY KEY,
    TakimAdi VARCHAR(50) NOT NULL,
    StadyumID INT,
    FOREIGN KEY (StadyumID) REFERENCES Stadyumlar(StadyumID)
);