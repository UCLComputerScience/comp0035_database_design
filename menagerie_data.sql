INSERT INTO "pet" ("pet_id","name","owner","species","gender","birth") VALUES (1,'Fluffy','Harold','cat','f','1993-02-04'),
 (2,'Claws','Gwen','cat','m','1994-03-17'),
 (3,'Buffy','Harold','dog','f','1989-05-13'),
 (4,'Fang','Benny','dog','m','1990-08-27'),
 (5,'Bowser','Diane','dog','m','1979-08-31'),
 (6,'Chirpy','Gwen','bird','f','1998-09-11'),
 (7,'Whistler','Gwen','bird','f','1997-12-09'),
 (8,'Slim','Benny','snake','m','1996-04-29');

INSERT INTO "event" ("event_id","pet_id","date","type","comment") VALUES (1,1,'1995-05-15','litter','4 kittens, 3 female, 1 male'),
 (2,3,'1993-06-23','litter','5 puppies, 2 female, 3 male'),
 (3,3,'1994-06-19','litter','3 puppies, 3 female'),
 (4,6,'1999-03-21','vet','needed beak straightened'),
 (5,4,'1991-10-12','kennel',NULL),
 (6,4,'1998-08-28','birthday','Gave him a new chew toy'),
 (7,2,'1998-03-17','birthday','Gave him a new flea collar'),
 (8,7,'1998-12-09','birthday','First birthday'),
 (9,4,'1991-10-12','kennel',NULL),
 (10,5,'1998-12-09','birthday','First birthday');