

   CREATE TABLE olvasok (
  oazon int,
  nev varchar(20) NOT NULL,
  tipus varchar(2) NOT NULL,
  CONSTRAINT pk_tanulok PRIMARY KEY (oazon)
);

CREATE TABLE kolcsonzesek(
  sorsz int,
  olvaso int  NOT NULL,
  idopont date  NOT NULL,
  mennyiseg int  NOT NULL,
  CONSTRAINT pk_kolcsonzesek PRIMARY KEY (sorsz),
  CONSTRAINT fk_kolcsonzesekolvaso FOREIGN KEY (olvaso) REFERENCES olvasok(oazon)
);
