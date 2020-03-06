CREATE TABLE folders (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  "name" TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT now() NOT NULL
);
CREATE TABLE notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  "name" TEXT NOT NULL,
  content TEXT NOT NULL,
  modified TIMESTAMP DEFAULT now() NOT NULL,
  created_at TIMESTAMP DEFAULT now() NOT NULL,
  folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE NOT NULL
);


