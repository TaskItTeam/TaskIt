CREATE TABLE IF NOT EXISTS task_it.task_categories (
   task_category_id SERIAL CONSTRAINT pk_task_categories PRIMARY KEY,
   "name" TEXT NOT NULL UNIQUE,
   description TEXT
);