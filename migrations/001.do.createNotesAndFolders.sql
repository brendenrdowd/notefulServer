CREATE TABLE "notes" (
	"n_id" INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY ,
	"modified" TIMESTAMP DEFAULT now() NOT NULL,
	"content" TEXT,
	"name" TEXT NOT NULL,
	CONSTRAINT "notes_pk" PRIMARY KEY ("n_id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "folders" (
	"f_id" INTEGER NOT NULL,
	"name" INTEGER NOT NULL,
	"modified" TIMESTAMP DEFAULT now() NOT NULL,
	"note_id" INTEGER REFERENCES notes(n_id)ON DELETE CASCADE NOT NULL,
	CONSTRAINT "folders_pk" PRIMARY KEY ("f_id")
) WITH (
  OIDS=FALSE
);


ALTER TABLE "folders" ADD CONSTRAINT "folders_fk0" FOREIGN KEY ("note_id") REFERENCES "notes"("n_id");




