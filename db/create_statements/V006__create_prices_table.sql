CREATE TABLE IF NOT EXISTS task_it.prices (
    price_id SERIAL CONSTRAINT pk_prices PRIMARY KEY,
    task_id INTEGER,
    cost NUMERIC,
    date_added DATE,
    CONSTRAINT fk_tasks_prices
        FOREIGN KEY(task_id)
            REFERENCES task_it.tasks(task_id)
);