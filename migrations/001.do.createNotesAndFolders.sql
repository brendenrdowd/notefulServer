CREATE TABLE IF NOT EXISTS "notes" (
	"id" serial NOT NULL,
	"modified" DATE NOT NULL,
	"content" TEXT NOT NULL,
	"name" TEXT NOT NULL,
	"folder_id" TEXT NOT NULL,
	CONSTRAINT "notes_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE IF NOT EXISTS "folders" (
	"id" serial NOT NULL,
	"name" serial NOT NULL,
	CONSTRAINT "folders_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "notes" ADD CONSTRAINT "notes_fk0" FOREIGN KEY ("folder_id") REFERENCES "folders"("id");

