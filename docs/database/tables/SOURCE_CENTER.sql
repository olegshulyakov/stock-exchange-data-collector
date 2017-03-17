CREATE TABLE SOURCE_CENTER(
     SC_ID                NUMERIC(18) NOT NULL,
     NAME                 VARCHAR(20) NOT NULL,
     DESCRIPTION          VARCHAR(40) NOT NULL,
     LAST_UPDATE_TM       DATETIME NOT NULL,
     ACTIVE_FLAG          CHAR(1) DEFAULT 'Y' NOT NULL,

       CONSTRAINT IPK_SOURCE_CENTER_ENGINE PRIMARY KEY (SC_ID) DEFAULT nextval('S_SOURCE_CENTER_PK')
) TABLESPACE GENERAL_INDEX;

ALTER TABLE SOURCE_CENTER ADD ( CHECK (ACTIVE_FLAG in ('Y','N') );
ALTER TABLE SOURCE_CENTER ADD CONSTRAINT IFK_SOURCE_CENTER FOREIGN KEY (SC_ID) REFERENCES SOURCE_CENTER (SC_ID) MATCH FULL;

