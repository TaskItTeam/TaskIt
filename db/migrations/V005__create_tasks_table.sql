CREATE TABLE IF NOT EXISTS task_it.tasks (
    task_id SERIAL CONSTRAINT pk_tasks PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    description TEXT,
    duration_minute NUMERIC NOT NULL
);