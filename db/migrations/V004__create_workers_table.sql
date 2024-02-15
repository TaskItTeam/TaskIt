CREATE TABLE IF NOT EXISTS task_it.workers (
    worker_id SERIAL CONSTRAINT pk_workers PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT NOT NULL UNIQUE,
    phone_number TEXT NOT NULL,
    city TEXT NOT NULL,
    identification_number TEXT
);