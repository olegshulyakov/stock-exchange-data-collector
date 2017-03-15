CREATE TABLE SOURCE_CENTER_ENGINE (
     SCE_ID             NUMERIC(18) NOT NULL,
     SC_ID              NUMERIC(18) NOT NULL,
     NAME               VARCHAR(20) NOT NULL,
     REGION_CG_ID       NUMERIC(18) NOT NULL,
     CURRENT_COB_SCEI   NUMERIC(18) NOT NULL,
     LAST_UPDATE_TIME   DATETIME NOT NULL,
     ACTIVE_FLAG        CHAR(1) DEFAULT 'Y' NOT NULL,

     CONSTRAINT IPK_SOURCE_CENTER_ENGINE PRIMARY KEY (SCE_ID) DEFAULT nextval('S_SOURCE_CENTER_ENGINE_PK')
) TABLESPACE GENERAL_INDEX;

ALTER TABLE SOURCE_CENTER_ENGINE ADD ( CHECK (ACTIVE_FLAG in ('Y','N') );
ALTER TABLE SOURCE_CENTER_ENGINE ADD CONSTRAINT IFK_SOURCE_CENTER FOREIGN KEY (SC_ID) REFERENCES SOURCE_CENTER (SC_ID) MATCH FULL;
ALTER TABLE SOURCE_CENTER_ENGINE ADD CONSTRAINT IFK_CODE_GENERIC FOREIGN KEY (REGION_CG_ID) REFERENCES CODE_GENERIC (CG_ID) MATCH FULL;
