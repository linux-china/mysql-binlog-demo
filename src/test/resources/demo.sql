DROP TABLE IF EXISTS people;
CREATE TABLE people (
  id   INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16)
) DEFAULT CHARSET utf8;

insert into people(name) values('jacky');
insert into people(name) values('tom');