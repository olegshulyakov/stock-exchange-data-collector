CREATE TABLE INDUSTRY (
     IND_ID         NUMERIC(18) NOT NULL DEFAULT nextval('S_INDUSTRY_PK'),
     NAME           VARCHAR(40) NOT NULL,
     SECTOR         VARCHAR(40) NOT NULL,
     ACTIVE_FLAG    CHAR(1) DEFAULT 'Y' NOT NULL CHECK (ACTIVE_FLAG in ('Y','N') ),

     CONSTRAINT IPK_INDUSTRY PRIMARY KEY (IND_ID)
);