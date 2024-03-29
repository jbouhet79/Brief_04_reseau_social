-- Generated by Mocodo 4.2.4

CREATE TABLE ACCOUNT (
  PRIMARY KEY (id),
  id        VARCHAR(42) NOT NULL,
  name      VARCHAR(42),
  age       VARCHAR(42),
  password  VARCHAR(42),
  email     VARCHAR(42),
  tel       VARCHAR(42),
  user_name VARCHAR(42)
);

CREATE TABLE COMMENT (
  PRIMARY KEY (id_1, id_2),
  id_1    VARCHAR(42) NOT NULL,
  id_2    VARCHAR(42) NOT NULL,
  content VARCHAR(42)
);

CREATE TABLE ENVOYER_RECEVOIR (
  PRIMARY KEY (id_1, id_2),
  id_1 VARCHAR(42) NOT NULL,
  id_2 VARCHAR(42) NOT NULL
);

CREATE TABLE FOLLOWER (
  PRIMARY KEY (id),
  id           VARCHAR(42) NOT NULL,
  notification VARCHAR(42)
);

CREATE TABLE LIKE (
  PRIMARY KEY (id_1, id_2),
  id_1 VARCHAR(42) NOT NULL,
  id_2 VARCHAR(42) NOT NULL
);

CREATE TABLE POST (
  PRIMARY KEY (id),
  id         VARCHAR(42) NOT NULL,
  content    VARCHAR(42),
  attachment VARCHAR(42),
  date       VARCHAR(42),
  id_2       VARCHAR(42) NOT NULL
);

ALTER TABLE COMMENT ADD FOREIGN KEY (id_2) REFERENCES ACCOUNT (id);
ALTER TABLE COMMENT ADD FOREIGN KEY (id_1) REFERENCES POST (id);

ALTER TABLE ENVOYER_RECEVOIR ADD FOREIGN KEY (id_2) REFERENCES ACCOUNT (id);
ALTER TABLE ENVOYER_RECEVOIR ADD FOREIGN KEY (id_1) REFERENCES FOLLOWER (id);

ALTER TABLE LIKE ADD FOREIGN KEY (id_2) REFERENCES ACCOUNT (id);
ALTER TABLE LIKE ADD FOREIGN KEY (id_1) REFERENCES POST (id);

ALTER TABLE POST ADD FOREIGN KEY (id_2) REFERENCES ACCOUNT (id);
