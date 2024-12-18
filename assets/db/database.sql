DROP TABLE IF EXISTS "scores";
DROP TABLE IF EXISTS "players";

CREATE TABLE "players"(
	"id_player" INTEGER NOT NULL UNIQUE,
	"name" VARCHAR(24) NOT NULL,
	"registered" DATETIME NOT NULL,
	PRIMARY KEY("id_player" AUTOINCREMENT)
);

CREATE TABLE "scores"(
	"id_score" INTEGER NOT NULL UNIQUE,
	"score" INT NOT NULL,
	"datetime" DATETIME NOT NULL,
	"id_player" INTEGER NOT NULL,
	FOREIGN KEY (id_player) REFERENCES players(id_player),
	PRIMARY KEY("id_score" AUTOINCREMENT)
);
