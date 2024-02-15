CREATE TABLE IF NOT EXISTS task_it.statuses (
    status_id SERIAL CONSTRAINT pk_statuses PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    description TEXT
);