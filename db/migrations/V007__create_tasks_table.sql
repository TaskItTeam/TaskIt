CREATE TABLE IF NOT EXISTS task_it.tasks (
    task_id SERIAL CONSTRAINT pk_tasks PRIMARY KEY,
    task_category_id INTEGER NOT NULL,
    "name" TEXT NOT NULL UNIQUE,
    description TEXT,
    duration NUMERIC NOT NULL,
    cost NUMERIC NOT NULL,
    CONSTRAINT fk_task_task_category
        FOREIGN KEY(task_category_id)
            REFERENCES task_it.task_categories(task_category_id)
);