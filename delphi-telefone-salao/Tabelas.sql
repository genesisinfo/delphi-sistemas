
CREATE TABLE CAD_APTO (
       COD_TERRITORIO       INTEGER NOT NULL,
       NUM_APTO             VARCHAR(8) NOT NULL,
       NUM_TELEFONE         NUMERIC(8),
       NUM_TELEFONE2         NUMERIC(8),
       NUM_TELEFONE3         NUMERIC(8),
       NUM_CONT             INTEGER NOT NULL
);


ALTER TABLE CAD_APTO
       ADD CONSTRAINT XPKCAD_APTO PRIMARY KEY (COD_TERRITORIO, 
              NUM_APTO);


CREATE TABLE CAD_TER_APTO (
       COD_TERRITORIO       INTEGER NOT NULL,
       NOM_RUA              VARCHAR(60) NOT NULL,
       NOM_BAIRRO           VARCHAR(40),
       NUM_CEP              NUMERIC(8),
       NOM_CONDOMINIO       VARCHAR(40)
);


ALTER TABLE CAD_TER_APTO
       ADD CONSTRAINT XPKCAD_TER_APTO PRIMARY KEY (COD_TERRITORIO);


ALTER TABLE CAD_APTO
       ADD CONSTRAINT FK_CAD_TER_APTOxCAD_APTO
              FOREIGN KEY (COD_TERRITORIO)
                             REFERENCES CAD_TER_APTO;



