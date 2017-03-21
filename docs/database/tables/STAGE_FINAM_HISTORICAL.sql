CREATE TABLE STAGE_FINAM_HISTORICAL (
                  SFH_ID        NUMERIC(18) NOT NULL,
                  HASH          NUMERIC(18) NOT NULL,
                  SYMBOL        VARCHAR(20) NOT NULL,
                  SYM_ID        NUMERIC(18) NOT NULL,
                  PER           DATETIME NOT NULL,
                  DATE          DATETIME NOT NULL,
                  TIME          DATETIME NOT NULL,
                  OPEN          NUMERIC(18) NOT NULL,
                  HIGH          NUMERIC(18) NOT NULL,
                  LOW           NUMERIC(18) NOT NULL,
                  CLOSE         NUMERIC(18) NOT NULL,
                  VOLUME        NUMERIC(18) NOT NULL,
                  ACTIVE_FLAG       CHAR(1) DEFAULT 'Y' NOT NULL,
                  ACTIVE_REASON     VARCHAR(20) NOT NULL,

CONSTRAINT IPK_STAGE_FINAM_HISTORICAL PRIMARY KEY (SFH_ID) DEFAULT nextval('S_STAGE_FINAM_HISTORICAL_PK')
) TABLESPACE GENERAL_INDEX;


ALTER TABLE STAGE_FINAM_HISTORICAL ADD ( CHECK (ACTIVE_FLAG in ('Y','N') );