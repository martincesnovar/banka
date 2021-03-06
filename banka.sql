CREATE TABLE Posta (
	POSTNA_ST INTEGER PRIMARY KEY,
	POSTA CHAR NOT NULL
);

CREATE TABLE Oseba (
	IME CHAR NOT NULL,
	PRIIMEK CHAR NOT NULL,
	EMSO CHAR PRIMARY KEY,
	ULICA CHAR NOT NULL,
	HISNA_ST CHAR NOT NULL,
	POSTA INTEGER NOT NULL REFERENCES Posta(POSTNA_ST)
);

CREATE TABLE Racun (
	EMSO CHAR NOT NULL REFERENCES Oseba(EMSO),
	RACUN INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE Transakcija (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
	RACUN INTEGER NOT NULL REFERENCES Racun(RACUN),
	ZNESEK DECIMAL NOT NULL,
	DATUM DATETIME NOT NULL DEFAULT datetime('now')
);
