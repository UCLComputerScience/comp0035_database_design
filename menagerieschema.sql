--pet table
CREATE TABLE "pet" (
	"pet_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	TEXT NOT NULL,
	"owner"	TEXT NOT NULL,
	"species"	TEXT NOT NULL,
	"sex"	TEXT NOT NULL,
	"birth"	TEXT
);
--event table
CREATE TABLE "event" (
	"event_id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	"pet_id"	INTEGER NOT NULL,
	"date"	TEXT NOT NULL,
	"type"	TEXT NOT NULL,
	"remark"	TEXT,
	FOREIGN KEY("pet_id") REFERENCES "pet"("pet_id")
);