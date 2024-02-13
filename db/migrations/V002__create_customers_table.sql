CREATE TABLE IF NOT EXISTS task_it.customers (
    customer_id SERIAL CONSTRAINT pk_customers PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT NOT NULL UNIQUE,
    phone_number TEXT
);